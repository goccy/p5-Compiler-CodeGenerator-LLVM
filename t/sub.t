use strict;
use warnings;
use Test::More;
use Test::Compiler;
use File::Basename qw/dirname/;

my $ir_dir = dirname(__FILE__) . '/ir';
my $code = do { local $/; <DATA> };
my $compiler = Test::Compiler->new({
    output => "$ir_dir/sub.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);
is($results->[0], 1);
is(int($results->[1]), int(2.3));
is(int($results->[2]), int(3.3));
is(int($results->[3]), int(-1.3));
is(int($results->[4]), int(2.3));
is(int($results->[5]), int(0.434783));
is($results->[6], 1);
is($results->[7], 0);
is($results->[8], 0);
is($results->[9], 1);
is($results->[10], 3);
is(int($results->[11]), int(1.3));
is(int($results->[12]), int(4.6));
is(int($results->[13]), int(2.3));
is($results->[14], 0);
is($results->[15], 0);
is($results->[16], 1);
is($results->[17], 0);

is(int($results->[18]), int(4.3));
is(int($results->[19]), int(-1.3));
is(int($results->[20]), int(4.6));
is(int($results->[21]), int(0.434783));

is($results->[22], 1);
is($results->[23], 0);
is($results->[24], 1);
is($results->[25], 0);
is($results->[26], 1);
is($results->[27], 0);

is(int($results->[28]), int(3.1));
is(int($results->[29]), int(1.1));
is(int($results->[30]), int(2.76));
is(int($results->[31]), int(1.91));
is($results->[32], 0);
is($results->[33], 1);

is(int($results->[34]), int(4.4));
is(int($results->[35]), int(3.5));
is(int($results->[36]), int(2.76));
is(int($results->[37]), int(0.52));
is($results->[38], 0);
is($results->[39], 1);
is($results->[40], 0);
is($results->[41], 1);
is(int($results->[42]), int(3.3));
is(int($results->[43]), int(4.5));

is($results->[44], 6);
is($results->[45], 1);
is($results->[46], 2);
is($results->[47], 3);
is($results->[48], 123);
is($results->[49], 1);
is($results->[50], 2);
is($results->[51], 34);

done_testing;

__DATA__
sub f {
    my $d = 4.5;
    my $a = $_[0];
    my $b = $_[1];
    my $c = $a + $b;
    say $a;
    say $b;

    # Object op Object
    say $a + $b;
    say $a - $b;
    say $a * $b;
    say $a / $b;
    say $a < $b;
    say $a > $b;
    say $a == $b;
    say $a != $b;

    # Object op Int
    say $a + 2;
    say $b - 1;
    say $b * 2;
    say $b / 1;
    say $a < 1;
    say $a > 1;
    say $a == 1;
    say $a != 1;

    # Int op Object
    say 2 + $b;
    say 1 - $b;
    say 2 * $b;
    say 1 / $b;
    say 0 < $a;
    say 1 > $a;
    say 1 == $a;
    say 1 != $a;

    # Object op Double
    say $a < 1.2;
    say $a > 1.2;
    say $a + 2.1;
    say $b - 1.2;
    say $b * 1.2;
    say $b / 1.2;
    say $a == 1.2;
    say $a != 1.2;

    # Double op Object
    say 2.1 + $b;
    say 1.2 - $b;
    say 1.2 * $b;
    say 1.2 / $b;
    say 1.1 < $a;
    say 1.1 > $a;
    say 1.1 == $a;
    say 1.1 != $a;

    say $c;

    return $d;
}

say(f(1, 2.3));

sub h {
    $_[0] + 2;
}

sub g {
    h($_[0] + 1);
}

say g(3);

sub function_argument_array_sample {
    my ($a, $b, $c) = @_;
    say $a;
    say $b;
    say $c;
    say @_;
}

function_argument_array_sample(1, 2, 3);

sub function_argument_shift_sample {
    my $a = shift;
    my $b = shift;
    say $a;
    say $b;
    say @_;
}

function_argument_shift_sample(1, 2, 3, 4);
