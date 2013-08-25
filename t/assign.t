use strict;
use warnings;
use Test::More;
use Test::Compiler;
use File::Basename qw/dirname/;

my $ir_dir = dirname(__FILE__) . '/ir';
my $code = do { local $/; <DATA> };
my $compiler = Test::Compiler->new({
    output => "$ir_dir/assign.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);
is($results->[0], 12);
is($results->[1], 10);
is($results->[2], 20);
is($results->[3], 10);

done_testing;

__DATA__
my $a = 10;

$a += 2;
say $a;
$a -= 2;
say $a;
$a *= 2;
say $a;
$a /= 2;
say $a;
