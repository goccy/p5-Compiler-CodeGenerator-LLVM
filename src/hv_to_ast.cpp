#include <parser.hpp>
#include <codegen.hpp>

#ifdef __cplusplus
extern "C" {
#endif

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "ppport.h"
#define new_Array() (AV*)sv_2mortal((SV*)newAV())
#define new_Hash() (HV*)sv_2mortal((SV*)newHV())
#define new_String(s, len) sv_2mortal(newSVpv(s, len))
#define new_Int(u) sv_2mortal(newSVuv(u))
#define new_Ref(sv) sv_2mortal(newRV_inc((SV*)sv))
#define set(e) SvREFCNT_inc(e)
#define get_value(hash, key) *hv_fetchs(hash, key, strlen(key))
#define add_key(hash, key, value) (value) ? hv_stores(hash, key, set(node_to_sv(aTHX_ value))) : NULL
#define add_token(hash, node) hv_stores(hash, "token", set(new_Token(aTHX_ node)))
#define pkgname(sv) HvNAME(SvSTASH(SvRV(sv)))

static inline SV *cast(pTHX_ SV *v, const char *name)
{
	return (sv_isa(v, name)) ? SvRV(v) : v;
}

#ifdef __cplusplus
};
#endif

namespace TokenType = Enum::Token::Type;
namespace TokenKind = Enum::Token::Kind;
using namespace std;

Nodes *av_to_nodes(pTHX_ SV*);
Node *hv_to_node(pTHX_ SV*);

Token *new_Token(pTHX_ HV *from)
{
	const char *name = SvPVX(get_value(from, "name"));
	const char *data = SvPVX(get_value(from, "data"));
	int line = SvIVX(get_value(from, "line"));
	int has_warnings = SvIVX(get_value(from, "has_warnings"));
	TokenType::Type type = (TokenType::Type)SvIVX(get_value(from, "type"));
	TokenKind::Kind kind = (TokenKind::Kind)SvIVX(get_value(from, "kind"));
	FileInfo finfo;
	finfo.start_line_num = line;
	finfo.end_line_num = line;
	finfo.indent = 0;
	//finfo.filename = self->finfo.filename;
	TokenInfo info;
	info.type = type;
	info.kind = kind;
	info.name = name;
	info.data = data;
	info.has_warnings = has_warnings;
	Token *ret = new Token(std::string(data), finfo);
	ret->info = info;
	ret->type = type;
	return ret;
}

Nodes *av_to_nodes(pTHX_ SV *from_)
{
	Nodes *ret = new Nodes();
	AV *from = (AV *)((SvROK(from_)) ? SvRV(from_) : from_);
	int size = av_len(from);
	for (int i = 0; i <= size; i++) {
		SV *arg = (SV *)*av_fetch(from, i, FALSE);
		ret->push_back(hv_to_node(aTHX_ arg));
	}
	return ret;
}

Node *hv_to_node(pTHX_ SV *from_)
{
	Node *ret = NULL;
	if (from_->sv_flags == 0) return NULL;
	string pkg = string(pkgname(from_));
	if (pkg == "Compiler::Parser::Node::Branch") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::Branch");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		BranchNode *node = new BranchNode(tk);
		node->left = hv_to_node(aTHX_ get_value(from, "left"));
		node->right = hv_to_node(aTHX_ get_value(from, "right"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::FunctionCall") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::FunctionCall");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		FunctionCallNode *node = new FunctionCallNode(tk);
		node->args = av_to_nodes(aTHX_ get_value(from, "args"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::Leaf") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::Leaf");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		LeafNode *node = new LeafNode(tk);
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::Array") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::Array");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		ArrayNode *node = new ArrayNode(tk);
		node->idx = hv_to_node(aTHX_ get_value(from, "idx"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::Hash") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::Hash");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		HashNode *node = new HashNode(tk);
		node->key = hv_to_node(aTHX_ get_value(from, "key"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::Dereference") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::Dereference");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		DereferenceNode *node = new DereferenceNode(tk);
		node->expr = hv_to_node(aTHX_ get_value(from, "expr"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::Function") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::Function");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		FunctionNode *node = new FunctionNode(tk);
		node->body = hv_to_node(aTHX_ get_value(from, "body"));
		node->prototype = hv_to_node(aTHX_ get_value(from, "prototype"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::Block") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::Block");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		BlockNode *node = new BlockNode(tk);
		node->body = hv_to_node(aTHX_ get_value(from, "body"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::Return") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::Return");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		ReturnNode *node = new ReturnNode(tk);
		node->body = hv_to_node(aTHX_ get_value(from, "body"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::SingleTermOperator") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::SingleTermOperator");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		SingleTermOperatorNode *node = new SingleTermOperatorNode(tk);
		node->expr = hv_to_node(aTHX_ get_value(from, "expr"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::List") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::List");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		ListNode *node = new ListNode(tk);
		node->data = hv_to_node(aTHX_ get_value(from, "data"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::ArrayRef") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::ArrayRef");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		ArrayRefNode *node = new ArrayRefNode(tk);
		node->data = hv_to_node(aTHX_ get_value(from, "data"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::HashRef") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::HashRef");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		HashRefNode *node = new HashRefNode(tk);
		node->data = hv_to_node(aTHX_ get_value(from, "data"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::IfStmt") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::IfStmt");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		IfStmtNode *node = new IfStmtNode(tk);
		node->expr = hv_to_node(aTHX_ get_value(from, "expr"));
		node->true_stmt = hv_to_node(aTHX_ get_value(from, "true_stmt"));
		node->false_stmt = hv_to_node(aTHX_ get_value(from, "false_stmt"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::ElseStmt") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::ElseStmt");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		ElseStmtNode *node = new ElseStmtNode(tk);
		node->stmt = hv_to_node(aTHX_ get_value(from, "stmt"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::ForStmt") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::ForStmt");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		ForStmtNode *node = new ForStmtNode(tk);
		node->init = hv_to_node(aTHX_ get_value(from, "init"));
		node->cond = hv_to_node(aTHX_ get_value(from, "cond"));
		node->progress = hv_to_node(aTHX_ get_value(from, "progress"));
		node->true_stmt = hv_to_node(aTHX_ get_value(from, "true_stmt"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::ForeachStmt") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::ForeachStmt");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		ForeachStmtNode *node = new ForeachStmtNode(tk);
		node->itr = hv_to_node(aTHX_ get_value(from, "itr"));
		node->cond = hv_to_node(aTHX_ get_value(from, "cond"));
		node->true_stmt = hv_to_node(aTHX_ get_value(from, "true_stmt"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::WhileStmt") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::WhileStmt");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		WhileStmtNode *node = new WhileStmtNode(tk);
		node->expr = hv_to_node(aTHX_ get_value(from, "expr"));
		node->true_stmt = hv_to_node(aTHX_ get_value(from, "true_stmt"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::Module") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::Module");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		ModuleNode *node = new ModuleNode(tk);
		node->args = hv_to_node(aTHX_ get_value(from, "args"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::Package") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::Package");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		PackageNode *node = new PackageNode(tk);
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else if (pkg == "Compiler::Parser::Node::RegPrefix") {
		HV *from = (HV *)cast(aTHX_ from_, "Compiler::Parser::Node::RegPrefix");
		HV *token = (HV *)cast(aTHX_ get_value(from, "token"), "Compiler::Lexer::Token");
		Token *tk = new_Token(aTHX_ token);
		RegPrefixNode *node = new RegPrefixNode(tk);
		node->exp = hv_to_node(aTHX_ get_value(from, "expr"));
		node->next = hv_to_node(aTHX_ get_value(from, "next"));
		ret = node;
	} else {
		assert(0 && "unknown blessed object");
	}
	return ret;
}

AST *sv_to_ast(pTHX_ SV *from)
{
	Node *root = hv_to_node(aTHX_ from);
	return new AST(root);
}
