use v5.30.0;
use warnings;
use Math::Vector::Real; # Math::Vector::Real::XS

sub get_cos_sim {
    my ($size, $a, $b) = @_;

    my $va = V(@$a);
    my $vb = V(@$b);
    # Calculate eucledian magnitude
    my $a_len = abs($va);
    my $b_len = abs($vb);

    my $eucl_magn = $a_len * $b_len;

    # If 0, stop calculation
    if ($eucl_magn == 0) {
        return undef;
    }

    # Calculate dot product
    my $dot_prod = $va * $vb;

    # Return cosine similarity
    return $dot_prod / $eucl_magn;
}

for (1..500) { 
    push @$a, rand(1000)-500 for (1..100);
    push @$b, rand(1000)-500 for (1..100);
    say get_cos_sim(100, $a, $b);
}
