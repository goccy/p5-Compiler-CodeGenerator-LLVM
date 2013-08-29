use strict;
use warnings;
use Test::More;
use Test::Compiler;
use File::Basename qw/dirname/;

my $ir_dir = dirname(__FILE__) . '/ir';
my $code = do { local $/; <DATA> };
my $compiler = Test::Compiler->new({
    output => "$ir_dir/scalar_ref.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);
is($results->[0], 1, 'original value');
is($results->[1], 2, 'changed value');
done_testing;

__DATA__
sub f {
    $_[0] = 2;
    return 1;
}

my $a = 1;
say $a;
f($a);
say $a;
