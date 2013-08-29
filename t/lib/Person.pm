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

1;
