use strict;
use warnings;
use Test::More;
use FindBin;
use File::Spec;
use lib File::Spec->catdir($FindBin::Bin, 'inc');
use Test::Compiler;
use Data::Dumper;
use File::Basename qw/dirname/;

my $ir_dir = dirname(__FILE__) . '/ir';
my $code = do { local $/; <DATA> };
my $compiler = Test::Compiler->new({
    output => "$ir_dir/auto_vivification.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);

my $a = {
    a => {
        b => {
            c => undef
        }
    }
};

my $b = [
    [
        undef,
        [
            undef,
            undef,
            undef
        ]
    ]
];

$Data::Dumper::Terse = 1;
my $expected = [ split("\n", Dumper($a) . Dumper($b)) ];
is(Dumper($results), Dumper($expected), 'auto vivification');

done_testing;

__DATA__
my $a = undef;
$a->{a}->{b}->{c};
Data::Dumper $a;

say "";

my $b = undef;
$b->[0]->[1]->[2];
Data::Dumper $b;
