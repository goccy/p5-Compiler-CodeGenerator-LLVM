use strict;
use warnings;
use Test::More;
use Test::Compiler;
use Data::Dumper;
use File::Basename qw/dirname/;

my $ir_dir = dirname(__FILE__) . '/ir';
my $code = do { local $/; <DATA> };
my $compiler = Test::Compiler->new({
    output => "$ir_dir/expand_string.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);
is($results->[0], '$a : $b : $c');

done_testing;

__DATA__
my $a = 1;
my $b = 2.345;
my $c = 'hello';

say "$a : $b : $c";

