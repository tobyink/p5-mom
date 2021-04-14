=pod

=encoding utf-8

=head1 PURPOSE

Test that Mom compiles.

=head1 AUTHOR

Toby Inkster E<lt>tobyink@cpan.orgE<gt>.

=head1 COPYRIGHT AND LICENCE

This software is copyright (c) 2020 by Toby Inkster.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

use strict;
use warnings;
use Test::More;

{
	package Foo;
	use Mom 'foo';
}

my $obj = Foo->new( foo => 1 );

is $obj->foo, 1;

done_testing;

