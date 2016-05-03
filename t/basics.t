use BlockAlgebra;
use Test;

plan 1;

is-approx (&cos + 1i*&sin)(pi), -1, "(&cos + 1i*&sin)(π) = -1";

# vim: ft=perl6
