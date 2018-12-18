use strict;
use warnings;
use LWP::Simple;

@ARGV == 2 or die "Usage: perl $0 Lehnert_uniprot.txt Lehnert.fasta\n";

my $dashes  = '-' x 25 . "\n";
my $outFile = pop;
my %list    = map { chomp; $_ => 1 } <>;

my $accessions = join '+OR+', keys %list;
my $fastaRecs =
  get "http://www.uniprot.org/uniprot/?query=$accessions&force=yes&format=fasta"
  or die "No records returned.\n";

open my $fh, '>', $outFile or die $!;

for ( split />/, $fastaRecs ) {
    if ( /\|(.+?)\|/ and exists $list{$1} ) {
        print $fh ">$_";
        delete $list{$1};
    }
}

close $fh;

print $dashes;

if ( !keys %list ) {
    print "All accessions retrieved.\n";
}
else {
    print "Accessions not retrieved:\n";
    print "$_\n" for keys %list;
}

print $dashes;