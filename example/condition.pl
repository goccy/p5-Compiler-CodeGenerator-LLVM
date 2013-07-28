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
open my $fh, '>', 'condition.ll';
print $fh $llvm_ir;
close $fh;
$generator->debug_run($ast);

__DATA__

=hge
my $a = 1 + 1;
$a = $a + 1;
say $a;
say $a == 2;
if ($a != 2) {
    say "true";
} elsif ($a == 2) {
    say "elsif";
} else {
    say "else";
}
=cut

say 1 && 2.2 && 3 && 4.2; # 2
say 0 && 2; # 0
say 1 || 2; # 1
say 0 || 2; # 2
