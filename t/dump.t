use strict;
use warnings;
use Test::More;
use Test::Compiler;
use Data::Dumper;
use File::Basename qw/dirname/;

my $ir_dir = dirname(__FILE__) . '/ir';
my $code = do { local $/; <DATA> };
my $compiler = Test::Compiler->new({
    output => "$ir_dir/dump.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);

my $a = {
    a => {
        b => {
            c => 1
        }
    },
    d => {
        e => "hoge"
    }
};

my $b = [
    0,
    [
        1,
        [
            2
        ]
    ],
    3
];

$Data::Dumper::Terse = 1;
my $expected = [ split("\n", Dumper($a) . Dumper($b)) ];
is(Dumper($results), Dumper($expected), 'dump');

done_testing;

__DATA__

my $a = {
    a => {
        b => {
            c => 1
        }
    },
    d => {
        e => "hoge"
    }
};

my $b = [
    0,
    [
        1,
        [
            2
        ]
    ],
    3
];

Data::Dumper $a;
say "";
Data::Dumper $b;
