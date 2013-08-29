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
    output => "$ir_dir/io.ll"
});

$compiler->compile($code);
$compiler->debug_run($code);
open my $fh, '<', 'io_test.pl';
my $str = do { local $/; <$fh> };
is($str, 'hello world', 'write');

done_testing;

__DATA__
my $fh;
open $fh, '>', 'io_test.pl';
print $fh 'hello world';
close $fh;
