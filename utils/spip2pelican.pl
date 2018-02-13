#!/usr/bin/env perl

use strict;
use warnings;
use DBI;
use v5.10;
use Data::Dumper;

my $pagenum = 1;

sub write_page
{
        my $text = shift;
        open(my $FH, '>', "pages/page$pagenum.md") or die "Could not open file $!";
        print $FH $text;
        $pagenum++;
        close $FH;
}

sub do_page
{
        my $ref = shift;
        my $template = 'Title: TITLE 
Date: DATE
Category: CATEGORY
Tags: old
Summary: SUMMARY

TEXT';
        ($template = $template) =~ s/TITLE/$ref->{titre}/;
        ($template = $template) =~ s/DATE/$ref->{date}/;
        ($template = $template) =~ s/CATEGORY/$ref->{category}/;
        ($template = $template) =~ s/SUMMARY/$ref->{descriptif} . $ref->{chapo}/;
        ($template = $template) =~ s/TEXT/$ref->{texte}/;
        write_page $template;
}

$req = 'select a.texte, a.date, a.descriptif, a.chapo, a.titre, r.titre as category from spip_articles a, spip_rubriques r where r.id_rubrique = a.id_rubrique order by a.id_rubrique';

my $dsn = "DBI:mysql:MY_AWESOME_DB:MY_AWSOME_HOST";
my $username = 'MY_AWSOME_USERNAME';
my $password = 'NY_AWSOME_PASSWORD';

my %attr = ( PrintError=>0,  # turn off error reporting via warn()
             RaiseError=>1   # report error via die()
           );
my $dbh = DBI->connect($dsn,$username,$password,\%attr);

my $sth = $dbh->prepare($req);
$sth->execute();

while (my $res = $sth->fetchrow_hashref) 
{
  do_page $res;
}
$dbh->disconnect();

