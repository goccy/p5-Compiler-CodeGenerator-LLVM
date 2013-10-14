#include <parser.hpp>

using namespace std;

AST::AST(Node *root)
{
  this->root = root;
}

void AST::dump(void)
{
  Node *traverse_ptr = root;
  for (; traverse_ptr->next != NULL; traverse_ptr = traverse_ptr->next) {
    traverse_ptr->dump(0);
  }
  traverse_ptr->dump(0);
}

static inline void Node_dump(Node *node, const char *msg, size_t depth)
{
	if (!node) return;
	for (size_t i = 0; i < depth; i++) {
		fprintf(stdout, "----------------");
	}
	fprintf(stdout, "%s ", msg);
	Node *traverse_ptr = node;
	for (; traverse_ptr != NULL; traverse_ptr = traverse_ptr->next) {
		traverse_ptr->dump(depth+1);
		if (traverse_ptr->next != NULL) {
			for (size_t i = 0; i < depth; i++) {
				fprintf(stdout, "----------------");
			}
		}
	}
}

Node::Node(Token *tk_)
{
	this->tk = tk_;
	this->parent = NULL;
	this->next = NULL;
}

void Node::dump(size_t)
{
	fprintf(stdout, "%-12s\n", cstr(tk->data));
}

Node *Node::getRoot(void)
{
	Node *search_ptr = this;
	while (search_ptr->parent != NULL) {
		search_ptr = search_ptr->parent;
	}
	return search_ptr;
}

Nodes::Nodes() : vector<Node *>()
{
}

Node *Nodes::pop(void)
{
	Node *ret = lastNode();
	pop_back();
	return ret;
}

void Nodes::push(Node *node)
{
	push_back(node);
}

void Nodes::swapLastNode(Node *node)
{
	pop_back();
	push_back(node);
}

Node *Nodes::lastNode(void)
{
	if (empty()) return NULL;
	return back();
}

void Nodes::dump(size_t depth)
{
	size_t n = size();
	for (size_t idx = 0; idx < n; idx++) {
		Node_dump(at(idx), NULL, depth);
	}
}

LeafNode::LeafNode(Token *tk_) : Node(tk_)
{
}

BranchNode::BranchNode(Token *tk_) : Node(tk_)
{
	this->left = NULL;
	this->right = NULL;
}

void BranchNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	if (right) {
		Node_dump(left,  "left  : ", depth+1);
		Node_dump(right, "right : ", depth+1);
	} else {
		Node_dump(left,  "left  : ", depth+1);
	}
}

ArrayNode::ArrayNode(Token *tk_) : Node(tk_)
{
	this->idx = NULL;
}

void ArrayNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(idx, "idx  : ", depth+1);
}

HashNode::HashNode(Token *tk_) : Node(tk_)
{
	this->key = NULL;
}

void HashNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(key, "key  : ", depth+1);
}

FunctionCallNode::FunctionCallNode(Token *tk_) : Node(tk_)
{
	this->args = new Nodes();
}

void FunctionCallNode::setArgs(Node *expr)
{
	args->push(expr);
}

void FunctionCallNode::dump(size_t depth)
{
	if (args->empty()) {
		fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	} else {
		fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
		for (size_t idx = 0; idx < args->size(); idx++) {
			Node_dump(args->at(idx),  "args  : ", depth+1);
		}
	}
}

FunctionNode::FunctionNode(Token *tk_) : Node(tk_)
{
	this->body = NULL;
	this->prototype = NULL;
}

void FunctionNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(body, "body  : ", depth+1);
}

ModuleNode::ModuleNode(Token *tk_) : Node(tk_)
{
	this->args = NULL;
}

void ModuleNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(args, "args  : ", depth+1);
}

PackageNode::PackageNode(Token *tk_) : Node(tk_)
{
}

void PackageNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
}

RegPrefixNode::RegPrefixNode(Token *tk_) : Node(tk_)
{
	exp = NULL;
	option = NULL;
}

void RegPrefixNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
}

RegReplaceNode::RegReplaceNode(Token *tk_) : Node(tk_)
{
	prefix = NULL;
	from = NULL;
	to = NULL;
	option = NULL;
}

void RegReplaceNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
}

RegexpNode::RegexpNode(Token *tk_) : Node(tk_)
{
	option = NULL;
}

void RegexpNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
}

LabelNode::LabelNode(Token *tk_) : Node(tk_)
{
}

void LabelNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
}

HandleReadNode::HandleReadNode(Token *tk_) : Node(tk_)
{
}

void HandleReadNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
}

HandleNode::HandleNode(Token *tk_) : Node(tk_)
{
	expr = NULL;
}

void HandleNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(expr, "expr  : ", depth+1);
}

BlockNode::BlockNode(Token *tk_) : Node(tk_)
{
	this->body = NULL;
}

void BlockNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(body, "body  : ", depth+1);
}

ReturnNode::ReturnNode(Token *tk_) : Node(tk_)
{
	this->body = NULL;
}

void ReturnNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(body, "body  : ", depth+1);
}

void BranchNode::link(Node *child)
{
	if (right) {
		if (typeid(*right) == typeid(ArrayNode)) {
			ArrayNode *array = dynamic_cast<ArrayNode *>(right);
			array->idx = child;
		} else if (typeid(*right) == typeid(HashNode)) {
			HashNode *hash = dynamic_cast<HashNode *>(right);
			hash->key = child;
		} else if (typeid(*right) == typeid(FunctionCallNode)) {
			FunctionCallNode *func = dynamic_cast<FunctionCallNode *>(right);
			if (child) func->setArgs(child);
		} else {
			assert(0 && "syntax error!\n");
		}
	} else if (left) {
		right = child;
	} else {
		left = child;
	}
	if (child) child->parent = this;
}

SingleTermOperatorNode::SingleTermOperatorNode(Token *tk) : Node(tk)
{
	expr = NULL;
}

void SingleTermOperatorNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(expr, "expr  : ", depth+1);
}

IfStmtNode::IfStmtNode(Token *tk) : Node(tk)
{
	this->expr = NULL;
	this->true_stmt = NULL;
	this->false_stmt = NULL;
}

void IfStmtNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(expr, "expr  : ", depth+1);
	Node_dump(true_stmt, "true  : ", depth+1);
	Node_dump(false_stmt, "false  : ", depth+1);
}

ElseStmtNode::ElseStmtNode(Token *tk) : Node(tk)
{
	this->stmt = NULL;
}

void ElseStmtNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(stmt, "", depth+1);
}

DoStmtNode::DoStmtNode(Token *tk) : Node(tk)
{
	this->stmt = NULL;
}

void DoStmtNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(stmt, "", depth+1);
}

ForStmtNode::ForStmtNode(Token *tk) : Node(tk)
{
	this->init = NULL;
	this->cond = NULL;
	this->progress = NULL;
	this->true_stmt = NULL;
}

void ForStmtNode::setExpr(Node *expr)
{
	init = expr;
	cond = expr->next;
	progress = expr->next->next;
	init->next = NULL;
	cond->next = NULL;
	progress->next = NULL;
}

void ForStmtNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(init, "init  : ", depth+1);
	Node_dump(cond, "cond  : ", depth+1);
	Node_dump(progress, "progress  : ", depth+1);
	Node_dump(true_stmt, "true  : ", depth+1);
}

ForeachStmtNode::ForeachStmtNode(Token *tk) : Node(tk)
{
	this->itr = NULL;
	this->cond = NULL;
	this->true_stmt = NULL;
}

void ForeachStmtNode::setExpr(Node *expr)
{
	itr = expr;
	cond = expr->next;
	itr->next = NULL;
}

void ForeachStmtNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(itr, "itr  : ", depth+1);
	Node_dump(cond, "cond  : ", depth+1);
	Node_dump(true_stmt, "true  : ", depth+1);
}

WhileStmtNode::WhileStmtNode(Token *tk) : Node(tk)
{
	this->expr = NULL;
	this->true_stmt = NULL;
}

void WhileStmtNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(expr, "expr  : ", depth+1);
	Node_dump(true_stmt, "true  : ", depth+1);
}

ListNode::ListNode(Token *tk) : Node(tk)
{
	this->data = NULL;
}

void ListNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(data, "data  : ", depth+1);
}


ArrayRefNode::ArrayRefNode(Token *tk) : Node(tk)
{
	this->data = NULL;
}

void ArrayRefNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(data, "data  : ", depth+1);
}


HashRefNode::HashRefNode(Token *tk) : Node(tk)
{
	this->data = NULL;
}

void HashRefNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(data, "data  : ", depth+1);
}

DereferenceNode::DereferenceNode(Token *tk) : Node(tk)
{
	this->expr = NULL;
}

void DereferenceNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(expr, "expr  : ", depth+1);
}

ThreeTermOperatorNode::ThreeTermOperatorNode(Token *tk) : Node(tk)
{
	this->cond = NULL;
	this->true_expr = NULL;
	this->false_expr = NULL;
}

void ThreeTermOperatorNode::dump(size_t depth)
{
	fprintf(stdout, "%s(%s) |\n", tk->info.name, cstr(tk->data));
	Node_dump(cond, "cond  : ", depth+1);
	Node_dump(true_expr, "true_expr  : ", depth+1);
	Node_dump(false_expr, "false_expr  : ", depth+1);
}
