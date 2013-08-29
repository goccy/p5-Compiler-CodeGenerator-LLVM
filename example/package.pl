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
open my $fh, '>', 'package.ll';
print $fh $llvm_ir;
close $fh;
print "generated\n";
$generator = Compiler::CodeGenerator::LLVM->new();
$generator->debug_run($ast);

__DATA__

package Person;

sub new {
    my ($class, $name, $age) = @_;
    my $self = {
        age  => $age,
        name => $name
    };
    return bless($self, $class);
}

sub get_name {
    my $self = shift;
    $self->{name};
}

sub get_age {
    my $self = shift;
    $self->{age};
}

package main;

my $person = Person->new("goccy", 26);

say $person;
say $person->get_name();
say $person->get_age;
