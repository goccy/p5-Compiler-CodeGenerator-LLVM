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
open my $fh, '>', 'array.ll';
print $fh $llvm_ir;
close $fh;
$generator = Compiler::CodeGenerator::LLVM->new();
$generator->debug_run($ast);

__DATA__
my @a = (1, 2, 3, 4);
say @a;
say push @a, 5;
say @a;
my $b = shift @a;
say @a;
say $b;
say $a[0];
$a[0] = 3;
say @a;
my $b = 0;
say $a[$b];
$a[$b + 1] = 2;
say @a;
#my @c = map { $_ * 2; } @a;
#say @c;
