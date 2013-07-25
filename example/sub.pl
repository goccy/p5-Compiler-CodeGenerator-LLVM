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
my $llvm_ir = $generator->generate($ast);
open my $fh, '>', 'sub.ll';
print $fh $llvm_ir;
close $fh;
print "generated\n";
$generator->debug_run($ast);

__DATA__

sub f {
    my $a = $_[0];
    my $b = $_[1];
    say $a;
    say $b;
    return 3;
}

say(f(1, 2));
