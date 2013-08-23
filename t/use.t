use strict;
use warnings;
use Compiler::Lexer;
use Compiler::Parser;
use Compiler::Parser::AST::Renderer;
use Compiler::CodeGenerator::LLVM;
use File::Basename qw/dirname/;
use Data::Dumper;

my $path = dirname(__FILE__) . '/lib';

my $code = do { local $/; <DATA> };
my $lexer = Compiler::Lexer->new('');
my $parser = Compiler::Parser->new();
$lexer->set_library_path([$path]);
my $results = $lexer->recursive_tokenize($code);
print Dumper $results;
my $renderer = Compiler::Parser::AST::Renderer->new();

my %ASTs;
foreach my $module_name (keys %$results) {
    my $tokens = $results->{$module_name};
    my $ast = $parser->parse($tokens);
    $renderer->render($ast);
    $ASTs{$module_name} = $ast;
}

$parser->link_ast(\%ASTs);

$renderer->render($ASTs{main});
my $generator = Compiler::CodeGenerator::LLVM->new();
my $llvm_ir = $generator->generate($ASTs{main});

open my $fh, '>', 'use.ll';
print $fh $llvm_ir;
close $fh;

warn "generated";

$generator = Compiler::CodeGenerator::LLVM->new();
$generator->debug_run($ASTs{main});

__DATA__
use Person;

my $person = Person->new("goccy", 26);

say $person;
say $person->get_name();
say $person->get_age;
