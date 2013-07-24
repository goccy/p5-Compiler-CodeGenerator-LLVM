#include <common.hpp>

class Node {
public:
	Token *tk;
	Node *parent;
	Node *next;
	Node(Token *tk);
	virtual void dump(size_t depth);
	Node *getRoot(void);
	virtual ~Node(void){};
};

class Nodes : public std::vector<Node *> {
public:
	Nodes(void);
	Node *pop(void);
	void push(Node *node);
	void swapLastNode(Node *node);
	Node *lastNode(void);
	void dump(size_t depth);
};

class BranchNode : public Node {
public:
	Node *left;
	Node *right;
	BranchNode(Token *tk);
	void link(Node *child);
	void dump(size_t depth);
};

class DereferenceNode : public Node {
public:
	Node *expr;
	DereferenceNode(Token *tk);
	void dump(size_t depth);
};

class ArrayNode : public Node {
public:
	Node *idx;
	ArrayNode(Token *tk);
	void dump(size_t depth);
};

class ArrayRefNode : public Node {
public:
	Node *data;
	ArrayRefNode(Token *tk);
	void dump(size_t depth);
};

class HashRefNode : public Node {
public:
	Node *data;
	HashRefNode(Token *tk);
	void dump(size_t depth);
};

class ListNode : public Node {
public:
	Node *data;
	ListNode(Token *tk);
	void dump(size_t depth);
};

class HashNode : public Node {
public:
	Node *key;
	HashNode(Token *tk);
	void dump(size_t depth);
};

class FunctionNode : public Node {
public:
	Node *body;
	Node *prototype;
	FunctionNode(Token *tk);
	void dump(size_t depth);
};

class ModuleNode : public Node {
public:
	Node *args;
	ModuleNode(Token *tk);
	void dump(size_t depth);
};

class PackageNode : public Node {
public:
	PackageNode(Token *tk);
	void dump(size_t depth);
};

class RegPrefixNode : public Node {
public:
	Node *exp;
	RegPrefixNode(Token *tk);
	void dump(size_t depth);
};

class FunctionCallNode : public Node {
public:
	Nodes *args;
	FunctionCallNode(Token *tk);
	void setArgs(Node *args);
	void dump(size_t depth);
};

class BlockNode : public Node {
public:
	Node *body;
	BlockNode(Token *tk);
	void dump(size_t depth);
};

class ReturnNode : public Node {
public:
	Node *body;
	ReturnNode(Token *tk);
	void dump(size_t depth);
};

class SingleTermOperatorNode : public Node {
public:
	Node *expr;
	SingleTermOperatorNode(Token *op);
	void dump(size_t depth);
};

class DoubleTermOperatorNode : public Node {
public:
	DoubleTermOperatorNode(Token *op);
};

class OtherTermOperatorNode : public Node {
public:
	OtherTermOperatorNode(Token *op);
};

class LeafNode : public Node {
public:
	LeafNode(Token *tk);
};

class IfStmtNode : public Node {
public:
	Node *expr;
	Node *true_stmt;
	Node *false_stmt;
	IfStmtNode(Token *tk);
	void dump(size_t depth);
};

class ElseStmtNode : public Node {
public:
	Node *stmt;
	ElseStmtNode(Token *tk);
	void dump(size_t depth);
};

class ForStmtNode : public Node {
public:
	Node *init;
	Node *cond;
	Node *progress;
	Node *true_stmt;
	ForStmtNode(Token *tk);
	void setExpr(Node *expr);
	void dump(size_t depth);
};

class ForeachStmtNode : public Node {
public:
	Node *itr;
	Node *cond;
	Node *true_stmt;
	ForeachStmtNode(Token *tk);
	void setExpr(Node *expr);
	void dump(size_t depth);
};

class WhileStmtNode : public Node {
public:
	Node *expr;
	Node *true_stmt;
	WhileStmtNode(Token *tk);
	void dump(size_t depth);
};

class Module {
public:
	const char *name;
	const char *args;
	Module(const char *name, const char *args);
};

class AST {
public:
	Node *root;
	AST(Node *root);
	void dump(void);
};

class ParseContext {
public:
	Token *tk;
	Token **tks;
	size_t idx;
	Nodes *nodes;
	Token *returnToken;

	ParseContext(Token *tk);
	Token *token(void);
	Token *token(Token *base, int offset);
	Token *nextToken(void);
	Node *lastNode(void);
	void pushNode(Node *node);
	bool end(void);
	void next(void);
	void next(int progress);
};

class Parser {
public:
	TokenPos start_pos;
	TokenPos pos;
	Node *_prev_stmt;
	Node *extra_node;
	Enum::Parser::Syntax::Type cur_stype;

	Parser(void);
	void grouping(Tokens *tokens);
	void prepare(Tokens *tokens);
	Token *parseSyntax(Token *start_token, Tokens *tokens);
	void parseSpecificStmt(Token *root);
	void setIndent(Token *tk, int indent);
	void setBlockIDWithBreadthFirst(Token *tk, size_t base_id);
	void setBlockIDWithDepthFirst(Token *tk, size_t *block_id);
	void dumpSyntax(Token *tk, int indent);
	Tokens *getTokensBySyntaxLevel(Token *root, Enum::Parser::Syntax::Type type);
	Modules *getUsedModules(Token *root);
	AST *parse(Tokens *tks);
	Node *_parse(Token *root);
	void link(ParseContext *pctx, Node *from, Node *to);
	bool isSingleTermOperator(ParseContext *pctx, Token *tk);
	bool isIrregularFunction(ParseContext *pctx, Token *tk);
	void parseStmt(ParseContext *pctx, Node *stmt);
	void parseExpr(ParseContext *pctx, Node *expr);
	void parseToken(ParseContext *pctx, Token *tk);
	void parseModifier(ParseContext *pctx, Token *term);
	void parseTerm(ParseContext *pctx, Token *term);
	void parseSymbol(ParseContext *pctx, Token *symbol);
	void parseSingleTermOperator(ParseContext *pctx, Token *op);
	void parseBranchType(ParseContext *pctx, Token *branch);
	void parseSpecificKeyword(ParseContext *pctx, Token *stmt);
	void parseSpecificStmt(ParseContext *pctx, Token *stmt);
	void parseDecl(ParseContext *pctx, Token *comma);
	void parseModule(ParseContext *pctx, Token *mod);
	void parseModuleArgument(ParseContext *pctx, Token *args);
	void parseRegPrefix(ParseContext *pctx, Token *reg);
	void parseFunction(ParseContext *pctx, Token *func);
	void parseFunctionCall(ParseContext *pctx, Token *func);
	void parseIrregularFunction(ParseContext *pctx, Token *func);
private:
	bool isExpr(Token *tk, Token *prev_tk, Enum::Token::Type::Type type, Enum::Token::Kind::Kind kind);
	void insertStmt(Token *tk, int idx, size_t grouping_num);
	void insertParenthesis(Tokens *tokens);
};

class Completer {
public:
	std::vector<std::string> *named_unary_keywords;

	Completer(void);
	bool isUnaryKeyword(std::string target);
	void complete(Token *root);
	void completeTerm(Token *root);
	void insertExpr(Token *syntax, int idx, size_t grouping_num);
	void insertTerm(Token *syntax, int idx, size_t grouping_num);
	void completeExprFromLeft(Token *root, Enum::Token::Type::Type type);
	void completeExprFromRight(Token *root, Enum::Token::Type::Type type);
	void completeExprFromRight(Token *root, Enum::Token::Kind::Kind kind);
	void completePointerExpr(Token *root);
	void completeIncDecExpr(Token *root);
	void completePowerExpr(Token *root);
	void completeSingleTermOperatorExpr(Token *root);
	void completeRegexpMatchExpr(Token *root);
	void completeHighPriorityDoubleOperatorExpr(Token *root);
	void completeLowPriorityDoubleOperatorExpr(Token *root);
	void completeShiftOperatorExpr(Token *root);
	void completeHighPriorityCompareOperatorExpr(Token *root);
	void completeLowPriorityCompareOperatorExpr(Token *root);
	void completeNamedUnaryOperators(Token *root);
	void completeBitOperatorExpr(Token *root);
	void completeAndOrOperatorExpr(Token *root);
	void completeAssignExpr(Token *root);
	void completeCommaArrowExpr(Token *root);
	void completeFunctionListExpr(Token *root);
	void completeAlphabetBitOperatorExpr(Token *root);
	void recoveryFunctionArgument(Token *root);
	void recoveryNamedUnaryOperatorsArgument(Token *root);
};

#define TYPE_match(ptr, T) typeid(*ptr) == typeid(T)
