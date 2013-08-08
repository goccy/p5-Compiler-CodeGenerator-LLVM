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
open my $fh, '>', 'multi_assign.ll';
print $fh $llvm_ir;
close $fh;
print "generated\n";
$generator = Compiler::CodeGenerator::LLVM->new();
$generator->debug_run($ast);

__DATA__

my ($a, $b, $c) = (1, 2, 3);
say $a;
say $b;
say $c;

my @array = (4, 5, 6);
say @array;
my ($d, $e, $f) = @array;
say $d;
say $e;
say $f;
