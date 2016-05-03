unit module BlockAlgebra;

multi infix:<+>(Block $a, Block $b) returns Block is export { -> |c { $a(|c) + $b(|c) } }
multi infix:<*>(Block $a, Block $b) returns Block is export { -> |c { $a(|c) * $b(|c) } }
multi infix:<*>(Numeric $a, Block $b) returns Block is export { -> |c { $a * $b(|c) } }
multi infix:<*>(Block $a, Numeric $b) returns Block is export { -> |c { $a(|c) * $b } }
multi infix:</>(Block $a, Numeric $b) returns Block is export { -> |c { $a(|c) / $b } }

multi prefix:<->(Block $a) returns Block is export { -> |c { -$a(|c) } }
multi prefix:<+>(Block $a) returns Block is export { -> |c { +$a(|c) } }

multi infix:<**>(Block $a, Numeric $b) returns Block is export { -> |c { $a(|c) ** $b } }

# vim: ft=perl6
