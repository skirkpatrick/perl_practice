#!/usr/bin/env perl

if (@ARGV != 2) {
    print STDERR "Usage: $0 <source> <dest>\n";
    print STDERR "source and dest must be files, not directories.\n";
    exit 1;
}

open(my $source, "<", $ARGV[0]) or die "Failed to open $ARGV[0]: $!";
open(my $dest, ">", $ARGV[1]) or die "Failed to open $ARGV[1]: $!";

while(<$source>) {
    print $dest $_;
}

close $source or die "Failed to close $source: $!";
close $dest or die "Failed to close $dest: $!";
