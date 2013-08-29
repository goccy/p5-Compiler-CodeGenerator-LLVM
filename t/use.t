use strict;
use warnings;
use Test::More;
use FindBin;
use File::Spec;
use lib File::Spec->catdir($FindBin::Bin, 'inc');
use Test::Compiler;
use File::Basename qw/dirname/;

my $ir_dir = dirname(__FILE__) . '/ir';
my $path = dirname(__FILE__) . '/lib';
my $code = do { local $/; <DATA> };

my $compiler = Test::Compiler->new({
    library_path => [$path],
    output => "$ir_dir/use.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);
like($results->[0], qr/Person=HASH\(0x[0-f]+\)/, 'Person->new');
is($results->[1], 'goccy', '$person->get_name');
is($results->[2], 26, '$person->get_age');

done_testing;

__DATA__
use Person;

my $person = Person->new("goccy", 26);

say $person;
say $person->get_name();
say $person->get_age;
