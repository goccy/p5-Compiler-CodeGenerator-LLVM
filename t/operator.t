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
    output => "$ir_dir/operator.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);
is($results->[0], '');
is($results->[1], 1);
is($results->[2], 2);
is($results->[3], 1);
is(int($results->[4]), int(1.2));
is($results->[5], 1);
is($results->[6], 1);
is($results->[7], 1);
is($results->[8], 1);
is($results->[9], 1);
is($results->[10], 1);
is($results->[11], 1);
is($results->[12], 1);
is($results->[13], 1);
is($results->[14], 1);
is($results->[15], 1);
is($results->[16], 1);
is($results->[17], 0);
is($results->[18], 0);
is($results->[19], 1);
is($results->[20], 3);
is($results->[21], 4);
is(int($results->[22]), int(3.1));
is(int($results->[23]), int(4.1));

done_testing;

__DATA__
say undef;
say 1;
say 2;
say 1 + 2 == 3;
say 1.2;
say 1.2 + 2.3 == 3.5;
say 2.1 + 2 == 4.1;
say 1 - 2 == -1;
say 1.3 - 2 == -0.7;
say 1.3 * 2 == 2.6;
say 1.3 * -2 == -2.6;
say 1.3 / 2 == 0.65;
say 1.3 / -2 == -0.65;
say 1 != 2;
say 1.2 != 2.4;
say 2 > 1;
say 1 < 2;
say 1 & 2;
say 0 & 1;

my $a = 1;
my $b = 2;
say $a;
say $a + 2;
say 2 + $b;
say $a + 2.1;
say 2.1 + $b;
