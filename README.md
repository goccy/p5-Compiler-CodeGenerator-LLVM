# NAME

Compiler::CodeGenerator::LLVM - Create LLVM IR for Perl5

# INSTALLATION

    # This module is dependent LLVM-3.3.
    # Please install LLVM-3.3 before building.

    wget http://llvm.org/releases/3.3/llvm-3.3.src.tar.gz
    cd llvm-3.3.src && ./configure && make && make install
    
# SYNOPSIS

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
    my $llvm_ir = $generator->generate($ast); # generate LLVM-IR
    $generator->debug_run($ast); # execute LLVM-IR with JIT

# DESCRIPTION

Compiler::CodeGenerator::LLVM creates LLVM IR for perl5.

# METHODS

- my $generator = Compiler::CodeGenerator::LLVM->new();

    Create new instance of Compiler::CodeGenerator::LLVM.

- my $llvm_ir = $generator->generate($ast);

    Get scalar value of LLVM IR.
    This method requires `$ast` from Compiler::Parser::parse

- $generator->debug_run($ast);

    Execute LLVM-IR with JIT for debugging.
    This method requires `$ast` from Compiler::Parser::parse

# LICENSE

Copyright (C) Masaaki Goshima (goccy).

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

Masaaki Goshima (goccy) <goccy54@gmail.com>

# SEE ALSO

[Compiler::Lexer](http://search.cpan.org/perldoc?Compiler::Lexer)
[Compiler::Parser](http://search.cpan.org/perldoc?Compiler::Parser)
