use strict;
use warnings;
use Test::More;

BEGIN {
    use_ok('Compiler::Lexer');
    use_ok('Compiler::Parser');
    use_ok('Compiler::CodeGenerator::LLVM');
}

done_testing;
