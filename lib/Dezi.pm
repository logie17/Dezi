package Dezi;
use warnings;
use strict;

our $VERSION = '0.001003';

1;

__END__

=head1 NAME

Dezi - search platform based on Apache Lucy, Swish3, Search::OpenSearch and Plack

=head1 SYNOPSIS

Start the Dezi server, listening on port 5000:

 % dezi -p 5000

Add a document B<foo> to the index:

 % curl http://localhost:5000/index/foo -XPOST \
   -d '<doc><title>bar</title>hello world</doc>' \
   -H 'Content-Type: application/xml'
   
Search the index:

 % curl 'http://localhost:5000/search?q=bar&format=json'
 % curl 'http://localhost:5000/search?q=bar&format=xml'

=head1 DESCRIPTION

Dezi is a search platform based on Apache Lucy, Swish3,
Search::OpenSearch and Search::Query. 

Dezi integrates several CPAN search libraries into one
easy-to-use interface.

=head1 AUTHOR

Peter Karman, C<< <karman at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-dezi at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Dezi>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Dezi


You can also look for information at:

=over 4

=item * Mailing list

L<https://groups.google.com/forum/#!forum/dezi-search>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Dezi>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Dezi>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Dezi>

=item * Search CPAN

L<http://search.cpan.org/dist/Dezi/>

=back

=head1 COPYRIGHT & LICENSE

Copyright 2011 Peter Karman.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=head1 SEE ALSO

L<Search::OpenSearch>, L<SWISH::3>, L<SWISH::Prog::Lucy>,
L<Plack>, L<Lucy>

=cut
