use strict;
use warnings;
use Test::More;
use Test::Compiler;
use File::Basename qw/dirname/;

my $ir_dir = dirname(__FILE__) . '/ir';
my $code = do { local $/; <DATA> };
my $compiler = Test::Compiler->new({
    output => "$ir_dir/loop.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);

for my $ix (0 .. 9) {
    is($results->[$ix], $ix);
}

for my $ix (0 .. 9) {
    is($results->[$ix + 10], $ix);
}

is($results->[20], 1234);

for my $ix (0 .. 3) {
    is($results->[$ix + 21], $ix + 1);
}

is($results->[25], '1  2  3  4  5  6  7  8  9  ');
is($results->[26], '2  4  6  8  10  12  14  16  18  ');
is($results->[27], '3  6  9  12  15  18  21  24  27  ');
is($results->[28], '4  8  12  16  20  24  28  32  36  ');
is($results->[29], '5  10  15  20  25  30  35  40  45  ');
is($results->[30], '6  12  18  24  30  36  42  48  54  ');
is($results->[31], '7  14  21  28  35  42  49  56  63  ');
is($results->[32], '8  16  24  32  40  48  56  64  72  ');
is($results->[33], '9  18  27  36  45  54  63  72  81  ');

done_testing;

__DATA__
for (my $i = 0; $i < 10; $i++) {
    say $i;
}

my $j = 0;
while ($j < 10) {
    say $j;
    $j++;
}

my @a = (1, 2, 3, 4);
say @a;

foreach my $itr (@a) {
    say $itr;
}

for (my $i = 1; $i < 10; $i++) {
    for (my $j = 1; $j < 10; $j++) {
        print $i * $j, "  ";
    }
    say "";
}
