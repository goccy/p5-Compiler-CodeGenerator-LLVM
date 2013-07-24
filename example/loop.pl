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
open my $fh, '>', 'loop.ll';
print $fh $llvm_ir;
close $fh;
$generator->debug_run($ast);

__DATA__
for (my $i = 0; $i < 10; $i++) {
    say $i;
}

my $j = 0;
while ($j < 10) {
    say $j;
    $j++;
}

my @a = (1, 2, 3, 4);
print @a, "\n";
