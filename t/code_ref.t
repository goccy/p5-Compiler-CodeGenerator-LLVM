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
    output => "$ir_dir/code_ref.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);
like($results->[0], qr/CODE\(0x[0-f]+\)/);
is($results->[1], 4);
is($results->[2], 5);

done_testing;

__DATA__
sub f {
    $_[0] + 1;
}

my $code = \&f;
say $code;

say &$code(3);
say &$code(4);
