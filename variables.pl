#!/usr/bin/env perl
use strict;
use warnings;

if (@ARGV != 1 || $ARGV[0] !~ /^(scalars|arrays|hashes)$/) {
    print "Usage: $0 (scalars|arrays|hashes)\n";
    exit 1;
}

my $built_ins = {
    scalars => {
                usage => "single items",
                sigil => '$'
               },
    arrays  => {
                usage => "an ordered list of items",
                sigil => '@'
               },
    hashes  => {
                usage => "a key/value map",
                sigil => '%'
               }
};

print "$ARGV[0] represent $built_ins->{$ARGV[0]}->{'usage'} and start with $built_ins->{$ARGV[0]}->{'sigil'}\n"
