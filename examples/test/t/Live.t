use strict;
use warnings;

BEGIN {
    use Test::More;

    if( $ENV{ LIVE } ) {
        plan tests => 1;
    } else {
        plan "skip_all", "only with LIVE";
    }
}

ok( 1, "live passes" );
