use strict;
use warnings;
use Test::More;
use FindBin;
use File::Spec;
use lib File::Spec->catdir($FindBin::Bin, 'inc');
use Test::Compiler;
use File::Basename qw/dirname/;

my $ir_dir = dirname(__FILE__) . '/ir';
my $code = do { local $/; <DATA> };
my $compiler = Test::Compiler->new({
    output => "$ir_dir/multi_assign.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);
is($results->[0], 1);
is($results->[1], 2);
is($results->[2], 3);
is($results->[3], 456);
is($results->[4], 4);
is($results->[5], 5);
is($results->[6], 6);

done_testing;

__DATA__
my ($a, $b, $c) = (1, 2, 3);
say $a;
say $b;
say $c;

my @array = (4, 5, 6);
say @array;
my ($d, $e, $f) = @array;
say $d;
say $e;
say $f;
