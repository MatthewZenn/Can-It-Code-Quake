use strict;
use warnings;

sub q_rsqrt {
    my $number = shift;
    my $three_halfs = 1.5;
    my $x2 = $number * 0.5;
    my $y = $number;
    my $i = unpack('l', pack('f', $y));
    $i = 0x5f3759df - ($i >> 1); 
    $y = unpack('f', pack('l', $i));
    $y = $y * ($three_halfs - ($x2 * $y * $y)); 

    return $y;
}

print q_rsqrt(2.43);
