#import "../preamble.typ" : *
#import "@preview/xarrow:0.3.0": xarrowDouble, xarrowSquiggly, xarrowTwoHead

#let iso = $tilde.equiv$
#let pp = $rho$
#let aa = $alpha$
#let oo = $sigma$
#let ll = $lambda$
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

For this assignment, I will annotate the smallest ideal containing $a$ as $tring(a)$ instead of $(a)$, as using brackets lead to confusing notation when dealing with polynomials.

= Question 1

Claim: $tring(2 comma 3+i) = tring(1+i)$

$
    3+i = 3(1 + i) - (1 + i)^2 in tring(1 + i) ", also " 2   = -i (1 + i)^2  in tring(1 + i)
$

So every element that can be written in terms of $3 + i, 2$ can be written in terms of $1 + i$, thus $tring(2 comma 3 + i) subset.eq tring(1 + i)$

$
    1 + i = (3 + i) - 2
$

So every element that can be written in terms of $1 + i$ can be written in terms of $3 + i, 2$, thus $tring(1 + i) subset.eq tring(2 comma 3 + i)$
Therefore, $tring(2 comma 3 + i) = tring(1 + i)$, which is a principal ideal.

= Question 2

=== Part 1

We will prove that $tring(x^2 + 1)$ is not a maximal ideal in $ZZ[x]$, to do this, we will show that: $ tring(x^2 + 1) subset.neq tring(x^2 + 1 comma 2) subset.neq ZZ[x] $

First, we will show $2 in.not tring(x^2+1)$. Since $tring(x^2 + 1) = {x^2 f + f | f in ZZ[x]}$, then $x^2 f + f$ cannot be any constant (for any $f$, there will be $x^n$ term for some $n$).

Simlarly, $tring(x^2+1 comma 2) eq.not ZZ[x]$, as $tring(x^2 + 1 comma 2) = {x^2 f + f + 2 g | f, g in ZZ[x]}$. Notice $1 in ZZ[x]$, however it is not in $tring(x^2 + 1 comma 2)$, as for $x^2 + f + 2 g$ to be a constant we would need $f eq.triple 0$ and $g$ constant. However, $2 g$  will always be an even constant. Thus $1 in.not tring(x^2 + 1 comma 2)$, and we have shown that it is not a maximal ideal.

=== Part 2

Define $X$ as the the complex number with rational coefficients. This is a field. In $QQ[x]$, it is a maximal ideal, since $QQ[x]\/tring(x^2+1) iso X$ which is a field. To show this, take the surjective ring homomorphism $sigma : QQ[x] -> X = f |-> f(i)$, the image of $sigma$ is $X$, and $ker sigma = tring(x^2 + 1)$, thus by the ismorphism theorems, we know that $QQ[x]\/tring(x^2+1) iso X$

=== Part 3

In $CC[x]$, it is not a maximal ideal, since $x^2 + 1 = (x+i)(x-i)$, so $tring(x^2 + 1) subset.eq tring(x+i)$, however, $x+1 in.not tring(x^2 + 1)$, and $1 in.not tring(x + i)$,  meaning that $tring(x^2 + 1)$  is not a maximal ideal since

$
    tring(x^2 + 1) subset.neq tring(x + i) subset.neq CC[x]
$ 

= Question 3

$
    sigma_r (a) = r a
$

Since the cancellation laws hold, we have that for any $r in R$, $sigma_r : R -> R$ is a permuttation of $R$ (proof below), meaning that there exists a unique $a in R$ such that
$sigma_r (a) = r a = 1$, then we know that $r$ has some multiplicative inverse in $R$. This means that it is a field.

(Bijection Proof) It must be injective due to cancellation laws, $sigma_r (a) = sigma_r (b)$ means $r a = r b$, which by cancellation laws, $a = b$, so injective. If every input has a unique output, and the number of inputs is finite $|R| = n$, then the number of otputs must be finite, and exactly $n$, so the codomain must be all of $R$. Thus it is a permuttaion.
 
= Question 4

== Part 1

To simplify this proof, use polar form. Define $p(r, theta) := r (cos theta + i sin theta)$, then $N(p(r, theta)) = r^2$

$
    N(p(r, theta) dot p(k, beta)) = N(p(r k, theta + beta)) = (r k)^2 = N(p(r, theta)) dot N(k, beta)
$

== Part 2

To show that 7 is prime in $ZZ[i]$, we need to show that $forall x, y in ZZ[i]$, we have that $7 | x y$ implies that $7 | x " or " 7 | y$

Let $x := aa + i bb, y := ll + i pp in ZZ[i]$ such that $7 | x y$, then, we know that there is some $n in ZZ[i]$ such that $7 n = x y$, let $n = a + i b$

$N(7 n) = (7 a)^2 + (7 b)^2 = 49 (a^2 + b^2)$, and $N(x y) = N(x) N(y) = (aa^2 + bb^2) (ll^2 + pp^2)$, and since $N(7n) =  N(x y)$, and (now in $NN$) that 
7 divies $N(7 n)$, then 7 must divide $(aa^2 + bb^2) (ll^2 + pp^2)$, meaning that 7 must divide $aa^2 + bb^2$ or $ll^2 + pp^2$ (or both).

Wlog, say that it divides $aa^2 + bb^2$, since we already know that 7 is a prime (in $NN$), we must have that $7$ must divide both $aa^2$ and $bb^2$, meaning that
$7 | (aa + i bb)$ in $ZZ[i]$, this by definition shows that $7$ is a prime in $ZZ[i]$ too.

== Part 3

Take $a + i b$, where $a, b in ZZ$, then we can define the surjective ring homomorphism $ sigma : ZZ[i] -> ZZ_7 [i] := a + i b |-> a mod 7 + i (b mod 7) $

We can see that $ker sigma = {7 a + i 7 b | a, b in ZZ} = (7)$, then by the isomorphism theorems, we know that $ZZ[i]\/ker sigma iso ZZ_7 [i]$, and since $|ZZ_7 [i]| = 49$, 
then we know that $|ZZ[i]\/(7)| = 49$

== Part 4

For commutative ring $R$, $R\/I$ is a field iff $I$ is maximal ideal. Since $ZZ[i]$ is commutative, and $ZZ[i]\/(7)$ is a field, then we have that $(7)$ is maximal ideal.




