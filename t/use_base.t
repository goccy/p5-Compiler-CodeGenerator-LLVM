use strict;
use warnings;
use Test::More;
use Test::Compiler;
use File::Basename qw/dirname/;

my $ir_dir = dirname(__FILE__) . '/ir';
my $path = dirname(__FILE__) . '/lib';
my $code = do { local $/; <DATA> };

my $compiler = Test::Compiler->new({
    library_path => [''],
    debug  => 1,
    output => "$ir_dir/use_base.ll"
});

$compiler->compile($code);
my $results = $compiler->debug_run($code);

is($results->[0], 'Called Derived::f()');
is($results->[1], 'Called Base::g()');

done_testing;

__DATA__
package Base;

sub new {
    my ($class) = @_;
    my $self = {};
    return bless $self, $class;
}

sub f {
    say 'Called Base::f()';
}

sub g {
    say 'Called Base::g()';
}


package Derived;

use base 'Base';

sub new {
    my ($class) = @_;
    my $self = {};
    return bless $self, $class;
}

sub f {
    say 'Called Derived::f()';
}


package main;

my $derived = Derived->new();
$derived->f();
$derived->g();
