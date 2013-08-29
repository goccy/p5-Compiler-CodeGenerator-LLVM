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
    output => "$ir_dir/array_ref.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);
like($results->[0], qr/ARRAY\(0x[0-f]+\)/);
like($results->[1], qr/ARRAY\(0x[0-f]+\)/);
like($results->[2], qr/1ARRAY\(0x[0-f]+\)34/);
is($results->[3],   1);
like($results->[4], qr/3ARRAY\(0x[0-f]+\)34/);
like($results->[5], qr/ARRAY\(0x[0-f]+\)/);
like($results->[6], qr/ARRAY\(0x[0-f]+\)/);
is($results->[7],   567);
is($results->[8],   5);
is($results->[9],  1067);
is($results->[10],  1067);
is($results->[11],  10);

done_testing;

__DATA__
my $a = [1, [5, 6, 7] , 3, 4];
my $b = $a;
say $a;
say $b;
say @$a;

say $a->[0];
$a->[0] = 3;
say @$a;

say $a->[1];
my $c = $a->[1];
say $c;
say @$c;

say $c->[0];
$c->[0] = 10;
say @$c;

my $d = $a->[1];
say @$d;
say $a->[1]->[0];
