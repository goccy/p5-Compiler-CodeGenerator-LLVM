use strict;
use warnings;
use Compiler::Lexer;
use Compiler::Parser;
use Compiler::Parser::AST::Renderer;
use Compiler::CodeGenerator::LLVM;

my $code = do { local $/; <DATA> };
my $tokens = Compiler::Lexer->new('')->tokenize($code);
my $ast = Compiler::Parser->new->parse($tokens);
Compiler::Parser::AST::Renderer->new()->render($ast);

my $llvm_ir = Compiler::CodeGenerator::LLVM->new->generate($ast);

open my $fh, '>', 'auto_vivification.ll';
print $fh $llvm_ir;
close $fh;

warn "generated";

Compiler::CodeGenerator::LLVM->new->debug_run($ast);

__DATA__

my $a = {
    a => {
        b => {
            c => 1
        }
    },
    d => {
        e => "hoge"
    }
};

my $b = [
    0,
    [
        1,
        [
            2
        ]
    ],
    3
];

Data::Dumper $a;
say "";
Data::Dumper $b;
