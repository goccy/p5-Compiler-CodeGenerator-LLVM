use strict;
use warnings;
use Test::More;
use Test::Compiler;
use File::Basename qw/dirname/;

my $ir_dir = dirname(__FILE__) . '/ir';
my $code = do { local $/; <DATA> };
my $compiler = Test::Compiler->new({
    output => "$ir_dir/hash.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);
is($results->[0], 'a1b2');
is($results->[1], 1);
is($results->[2], 2);
is($results->[3], '');
is($results->[4], 'a3b2');
is($results->[5], 'a3b2');

done_testing;
__DATA__
my %a = (a => 1, b => 2);
say %a;

say $a{a};
say $a{b};
say $a{c};

$a{a} = 3;
say %a;

my @b = %a;
say @b;
