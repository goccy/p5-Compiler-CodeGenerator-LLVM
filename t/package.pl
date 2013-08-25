use strict;
use warnings;
use Test::More;
use Test::Compiler;
use File::Basename qw/dirname/;

my $ir_dir = dirname(__FILE__) . '/ir';
my $code = do { local $/; <DATA> };
my $compiler = Test::Compiler->new({
    output => "$ir_dir/package.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);
like($results->[0], qr/Person=HASH\(0x[0-f]+\)/, 'Person->new');
is($results->[1], 'goccy', '$person->get_name');
is($results->[2], 26, '$person->get_age');

done_testing;

__DATA__
package Person;

sub new {
    my ($class, $name, $age) = @_;
    my $self = {
        age  => $age,
        name => $name
    };
    return bless($self, $class);
}

sub get_name {
    my $self = shift;
    $self->{name};
}

sub get_age {
    my $self = shift;
    $self->{age};
}

package main;

my $person = Person->new("goccy", 26);

say $person;
say $person->get_name();
say $person->get_age;
