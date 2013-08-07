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
my $generator = Compiler::CodeGenerator::LLVM->new();
$generator->debug_run($ast);

__DATA__

sub f {
    my $d = 4.5;
    my $a = $_[0];
    my $b = $_[1];
    my $c = $a + $b;
    say $a;
    say $b;

    # Object op Object
    say $a + $b;
    say $a - $b;
    say $a * $b;
    say $a / $b;
    say $a < $b;
    say $a > $b;
    say $a == $b;
    say $a != $b;

    # Object op Int
    say $a + 2;
    say $b - 1;
    say $b * 2;
    say $b / 1;
    say $a < 1;
    say $a > 1;
    say $a == 1;
    say $a != 1;

    # Int op Object
    say 2 + $b;
    say 1 - $b;
    say 2 * $b;
    say 1 / $b;
    say 1 < $a;
    say 1 > $a;
    say 1 == $a;
    say 1 != $a;

    # Object op Double
    say $a < 1.2;
    say $a > 1.2;
    say $a + 2.1;
    say $b - 1.2;
    say $b * 1.2;
    say $b / 1.2;
    say $a == 1.2;
    say $a != 1.2;

    # Double op Object
    say 2.1 + $b;
    say 1.2 - $b;
    say 1.2 * $b;
    say 1.2 / $b;
    say 1.1 < $a;
    say 1.1 > $a;
    say 1.1 == $a;
    say 1.1 != $a;

    say $c;

    return $d;
}

say(f(1, 2.3));

sub h {
    return $_[0] + 2;
}

sub g {
    return h($_[0] + 1);
}

say g(3);

sub fib {
    if ($_[0] < 2) {
        return 1;
    }
    return fib($_[0] - 1) + fib($_[0] - 2);
}

say(fib(35));
