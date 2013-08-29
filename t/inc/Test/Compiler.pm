package Test::Compiler;
use strict;
use warnings;
use Compiler::Lexer;
use Compiler::Parser;
use Compiler::Parser::AST::Renderer;
use Compiler::CodeGenerator::LLVM;

sub new {
    my ($class, $options) = @_;
    my $self = {
        input  => $options->{input}  || '-',
        output => $options->{output} || 'compiled.ll',
        debug  => $options->{debug}  || 0,
        library_path => $options->{library_path} || \@INC
    };
    return bless $self, $class;
}

sub compile {
    my ($self, $code) = @_;
    my $ast = $self->__make_ast($code);
    my $generator = Compiler::CodeGenerator::LLVM->new();
    my $llvm_ir = $generator->generate($ast);

    open my $fh, '>', $self->{output};
    print $fh $llvm_ir;
    close $fh;
}

sub debug_run {
    my ($self, $code) = @_;
    my $ast = $self->__make_ast($code);
    pipe(my $reader, my $writer);
    select($writer);
    select STDOUT;
    local $| = 1;

    my $generator = Compiler::CodeGenerator::LLVM->new();
    my @captured_results;
    if (my $pid = fork()) {
        close $writer;
        waitpid($pid, 0);
        push @captured_results, map {
            chomp($_); $_;
        } <$reader>;
    } else {
        close $reader;
        open STDOUT, '>&', $writer;
        $generator->debug_run($ast);
        exit;
    }
    return \@captured_results;
}

sub __make_ast {
    my ($self, $code) = @_;
    return $self->{ast} if ($self->{ast});

    my $lexer = Compiler::Lexer->new($self->{input});
    my $parser = Compiler::Parser->new();
    $lexer->set_library_path($self->{library_path});
    my $results = $lexer->recursive_tokenize($code);

    my %ast;
    foreach my $module_name (keys %$results) {
        my $tokens = $results->{$module_name};
        next unless @$tokens;
        $ast{$module_name} = $parser->parse($tokens);
    }
    $parser->link_ast(\%ast);
    my $main_ast = $ast{main};

    if ($self->{debug}) {
        my $renderer = Compiler::Parser::AST::Renderer->new();
        $renderer->render($main_ast);
    }

    $self->{ast} = $main_ast;
    return $main_ast;
}

1;
