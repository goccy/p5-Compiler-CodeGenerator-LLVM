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
open my $fh, '>', 'hash_ref.ll';
print $fh $llvm_ir;
close $fh;
$generator = Compiler::CodeGenerator::LLVM->new();
$generator->debug_run($ast);

__DATA__
my $a = { a => 1, b => { d => 8 }, c => 2 };
say $a;
say %$a;

say $a->{a};
say $a->{b};
say $a->{c};

$a->{a} = 3;
say %$a;

my @b = %$a;
say @b;

say $a->{b}->{d};
