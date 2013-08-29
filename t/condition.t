use strict;
use warnings;
use Test::More;
use Test::Compiler;
use File::Basename qw/dirname/;

my $ir_dir = dirname(__FILE__) . '/ir';
my $code = do { local $/; <DATA> };
my $compiler = Test::Compiler->new({
    output => "$ir_dir/condition.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);
is($results->[0], 3);
is($results->[1], 0);
is($results->[2], 'true');
is(int($results->[3]), int(4.2));
is($results->[4], 0);
is($results->[5], 1);
is($results->[6], 2);

done_testing;

__DATA__
my $a = 1 + 1;
$a = $a + 1;
say $a;
say $a == 2;

if ($a != 2) {
    say "true";
} elsif ($a == 2) {
    say "elsif";
} else {
    say "else";
}

say 1 && 2.2 && 3 && 4.2; # 4.2
say 0 && 2; # 0
say 1 || 2; # 1
say 0 || 2; # 2
