package Compiler::CodeGenerator::LLVM;
use v5.008_001;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);
our %EXPORT_TAGS = ( 'all' => [ qw() ] );
our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );
our @EXPORT = qw();
our $VERSION = '0.01';
require XSLoader;
XSLoader::load('Compiler::CodeGenerator::LLVM', $VERSION);

1;
__END__

=head1 NAME

Compiler::CodeGenerator::LLVM - Create LLVM IR for Perl5

=head1 SYNOPSIS

    use Compiler::Lexer;
    use Compiler::Parser;
    use Compiler::CodeGenerator::LLVM;

    my $filename = $ARGV[0];
    open(my $fh, "<", $filename) or die("$filename is not found.");
    my $script = do { local $/; <$fh> };
    my $lexer = Compiler::Lexer->new($filename);
    my $tokens = $lexer->tokenize($script);
    my $parser = Compiler::Parser->new();
    my $ast = $parser->parse($tokens);
    my $generator = Compiler::CodeGenerator::LLVM->new();
    my $llvm_ir = $generator->generate($ast);

=head1 DESCRIPTION

Compiler::CodeGenerator::LLVM creates LLVM IR for perl5.

=head1 SEE ALSO

[Compiler::Lexer](http://search.cpan.org/perldoc?Compiler::Lexer)
[Compiler::Parser](http://search.cpan.org/perldoc?Compiler::Parser)

=head1 AUTHOR

Masaaki Goshima (goccy) <goccy54@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright (C) Masaaki Goshima (goccy).

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
