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
    output => "$ir_dir/hash_ref.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);
like($results->[0], qr/HASH\(0x[0-f]+\)/);
like($results->[1], qr/a1bHASH\(0x[0-f]+\)c2/);
is($results->[2], 1);
like($results->[3], qr/HASH\(0x[0-f]+\)/);
is($results->[4], 2);
like($results->[5], qr/a3bHASH\(0x[0-f]+\)c2/);
like($results->[6], qr/a3bHASH\(0x[0-f]+\)c2/);
is($results->[7], 8);

done_testing;

__DATA__
my $a = { a => 1, b => { d => 8 }, c => 2 };
say $a;
say %$a;

say $a->{a};
say $a->{b};
say $a->{c};

$a->{a} = 3;
say %$a;

my @b = %$a;
say @b;

say $a->{b}->{d};
