#import "../preamble.typ" : *
#import "@preview/xarrow:0.3.0": xarrowDouble, xarrowSquiggly, xarrowTwoHead

#let iso = $tilde.equiv$
#let pp = $rho$
#let aa = $alpha$
#let oo = $sigma$
#let kk = $kappa$
#let tt = $tau$
#let bb = $beta$

#let diff(x) = $d/(d #x)$

#let tring(x) = $angle.l #x angle.r$

#show: project.with(
    title: "Rings & Fields",
    subtitle: "Assignment 3",
    abstract: [
        #align(center, pad(top: 100pt, []))
    ]
)

= Question 1

Claim: $tring((2, 3+i)) = tring(1+i)$ (let $J:=tring(1+i)$)

$1+i in J$, so, $(1 + i)^2 = 2 i in J$. Since forall $r in R, j in J$ $r j in J$, we know that $(-i) 2 i = 2 in J$. We now have 
to show that $3 + 1 in J$, we know that $3(1 + i) + (-1) (2i) = 3 - i in J$, so we have shown that $tring((2, 3 + i)) subset.eq tring(1 + i)$,
to show that they are in fact exactly equivalent, we need to show $tring(1+i) subset.eq tring((2, 3 + i))$, since $3 + i - 2 in tring((2, 3 + i))$,
then we have that any element in $tring(1+i)$ can be written in terms of $2, 3 + i$, so we have shown that $tring((2, 3+i)) =  tring(1+i)$

= Question 2

=== Part 1

We will prove that $tring(x^2 + 1)$ is not a maximal ideal in $ZZ[x]$, to do this, we will show that: $ tring(x^2 + 1) subset.neq tring((x^2 + 1, 2)) subset.neq ZZ[x] $

First, we will show $2 in.not tring(x^2+1)$. Since $tring(x^2 + 1) = {x^2 f + f | f in ZZ[x]}$, then $x^2 f + f$ cannot be any constant (for any $f$, there will be $x^n$ term for some $n$).
We can simlarly show that $tring((x^2+1, 2)) eq.not ZZ[x]$, as $tring((x^2 + 1, 2)) = {x^2 f + f + 2 g | f, g in ZZ[x]}$. $1 in ZZ[x]$, however it is not in $tring((x^2 + 1, 2))$, for $x^2 + f + 2 g$ to be a constant
we would need $f eq.triple 0$ and $g$ constant. However, $2 g$  will always be an even constant. Thus $1 in.not ZZ[x]$

=== Part 2

Define $X$ as the the complex number with rational coefficients. This is a field. In $QQ[x]$, it is a maximal ideal, since $QQ[x]\/tring(x^2+1) iso X$ which is a field. (take the surjective ring homomorphism $sigma : QQ[x] -> X = f |-> f(i)$)

=== Part 3

In $CC[x]$, it is not a maximal ideal, since $x^2 + 1 = (x+i)(x-i)$, so $tring(x^2 + 1) subset.eq tring(x+i)$, however, $x+1 in.not tring(x^2 + 1)$, so it is not maximal ideal.

= Question 3

Take some $a in R - {1,0}$, since the ring is finite, we can find $j, k in NN$ st $k > j$, so for some natural $n$ we have $j + n = k$, then $a^k = a^(j+n) = a^j a^n= a^j$, then, using the cancellatin law we have that $a^n = a^(n-1) a = 1$, thus $a^(-1) = a^(n-1)$. We know that $n$ cannot be one, since it being one would mean $a^1 = 1$, which would be a contradiction, so $a^(n-1) in R$

= Question 4

== Part 1

To simplify this proof, use polar form. Define $p(r, theta) := r (cos theta + i sin theta)$. 

$
    N(p(r, theta) dot p(k, beta)) = N(p(r k, theta + beta)) = (r k)^2 = N(p(r, theta)) dot N(k, beta)
$

== Part 2

== Part 3

Take $a + i b$, where $a, b in ZZ$, then we can define the surjective ring homomorphism $ sigma : ZZ[i] -> ZZ_7 [i] := a + i b |-> a mod 7 + i (b mod 7) $

We can see that $ker sigma = {7 a + i 7 b | a, b in ZZ} = (7)$, then by the isomorphism theorems, we know that $ZZ[i]\/ker sigma iso ZZ_7 [i]$, and since $ZZ_7 [i] iso ZZ_49$, 
then we know that $|ZZ[i]\/(7)| = 49$

== Part 4

For commutative ring $R$, $R\/I$ is a field iff $I$ is maximal ideal. Since $ZZ[i]$ is commutative, and $ZZ[i]\/(7)$ is a field, then we have that $(7)$ is maximal ideal.




