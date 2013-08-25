use strict;
use warnings;
use Test::More;
use Test::Compiler;
use File::Basename qw/dirname/;

my $ir_dir = dirname(__FILE__) . '/ir';
my $code = do { local $/; <DATA> };
my $compiler = Test::Compiler->new({
    output => "$ir_dir/fib.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);
is($results->[0], 14930352, 'fib(35)');
done_testing;

__DATA__
sub fib {
    if ($_[0] < 2) {
        return 1;
    }
    return fib($_[0] - 1) + fib($_[0] - 2);
}

say(fib(35));
