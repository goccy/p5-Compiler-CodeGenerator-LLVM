use strict;
use warnings;
use Compiler::Lexer;
use Compiler::Parser;
use Compiler::Parser::AST::Renderer;
use Compiler::CodeGenerator::LLVM;

my $code = do { local $/; <DATA> };
my $tokens = Compiler::Lexer->new('')->tokenize($code);
my $parser = Compiler::Parser->new();
my $ast = $parser->parse($tokens);
Compiler::Parser::AST::Renderer->new->render($ast);
my $generator = Compiler::CodeGenerator::LLVM->new();
#my $llvm_ir = $generator->generate($ast);
$generator->debug_run($ast);

__DATA__
my $a = 1 + 1;
say $a == 2;
if ($a != 2) {
    say "true";
} elsif ($a == 2) {
    say "elsif";
} else {
    say "else";
}
