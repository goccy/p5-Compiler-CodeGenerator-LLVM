use strict;
use warnings;
use inc::Module::Install;
use Module::Install::XSUtil; # for co-developpers
use constant DEBUG => 1;

use_ppport 3.19;
all_from 'lib/Compiler/CodeGenerator/LLVM.pm';
requires_cplusplus;
cc_warnings;
cc_src_paths qw(src);
cc_include_paths qw(include);
cc_define qw();
makemaker_args->{CC} = 'g++';
makemaker_args->{LD} = 'g++';
my @ignore_warnings_options = qw(missing-field-initializers unused-variable);
makemaker_args->{CCFLAGS} .= join('', map { ' -Wno-' . $_ } @ignore_warnings_options);
if (DEBUG) {
    makemaker_args->{OPTIMIZE} = '-O0';
    chomp(my $llvm_cflags = `llvm-config --cxxflags`);
    $llvm_cflags =~ s/-fno-rtti//;
    makemaker_args->{CCFLAGS} = "-g3 $llvm_cflags " . makemaker_args->{CCFLAGS};
    chomp(my $llvm_ldflags = `llvm-config --ldflags`);
    chomp(my $llvm_libs = `llvm-config --libs`);
    makemaker_args->{LDLOADLIBS} = "$llvm_ldflags $llvm_libs -lLLVMIRReader";
}
WriteAll(check_nmake => 0);
