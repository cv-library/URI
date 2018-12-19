package URI::urn::oid;  # RFC 2061

use strict;
use warnings;

our $VERSION = '1.75';

use parent 'URI::urn';

sub oid {
    my $self = shift;
    my $old = $self->_nss;
    if (@_) {
	$self->_nss(join(".", @_));
    }
    return split(/\./, $old) if wantarray;
    return $old;
}

1;
