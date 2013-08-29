use strict;
use warnings;
use Test::More;
use Test::Compiler;
use File::Basename qw/dirname/;

my $ir_dir = dirname(__FILE__) . '/ir';
my $code = do { local $/; <DATA> };
my $compiler = Test::Compiler->new({
    output => "$ir_dir/condition.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);
is($results->[0], 1234);
is($results->[1], 6);
is($results->[2], 12345);
is($results->[3], 2345);
is($results->[4], 1);
is($results->[5], 2);
is($results->[6], 3345);
is($results->[7], 3);
is($results->[8], 3245);

done_testing;

__DATA__
my @a = (1, 2, 3, 4);
say @a;
say push @a, 5;
say @a;
my $b = shift @a;
say @a;
say $b;
say $a[0];
$a[0] = 3;
say @a;
my $b = 0;
say $a[$b];
$a[$b + 1] = 2;
say @a;
#my @c = map { $_ * 2; } @a;
#say @c;
