package DateTime::Format::Diotek;
# ABSTRACT: parse only YYYYMMDDhhmmss format
use strict;
use warnings;
use DateTime::Format::Builder
(
    parsers => {
        parse_datetime => [
            {
                params => [qw(year month day hour minute second)],
                regex  => qr/^(\d\d\d\d)(\d\d)(\d\d)(\d\d)(\d\d)(\d\d)$/,
            }
        ]
    }
);

=head1 SYNOPSIS

    use DateTime::Format::Diotek;
    my $dt = DateTime::Format::Diotek->parse_datetime('20120203065530'); # YYYYMMDDhhmmss
    print $dt->ymd; # 2012-02-03
    print $dt->hms; # 06:55:30

=cut

1;
