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

#show: project.with(
    title: "Rings & Fields",
    subtitle: "Assignment 2",
    abstract: [
        #align(center, pad(top: 100pt, []))
    ]
)


#pagebreak()
#homework(title: "1", [
    + Write down all elements of the ideal $overline(6) ZZ_36$ of $ZZ_36$
    + Use correspondence theorem to compactly describe all ideals of $ZZ_36$
])

=== Part 1

$
    overline(6) ZZ_36 = {overline(0), overline(6), overline(12), overline(18), overline(24), overline(30)}
$

=== Part 2

The correspondence theorem tells us that a subring $A$ of the ring $R$ containing $I$ (ideal of $R$) is an ideal of $R$ iff $A \/ I$ is
an ideal of $R \/ I$. We want to find all ideals of $ZZ_36 iso ZZ\/36ZZ$. So we must find all subgroups of $ZZ$ containing inside it the
ideal $36 ZZ$. These subgroups can be written as $k ZZ$, where $k$ divides $36$. Meaning that the set if ideals of $ZZ_36$ is given by
$k ZZ_36$ for $k in {1, 2, 3, 4, 6, 9, 12, 18, 36}$.

#homework(title: "2", [
    + Write down all ideals of $ZZ$ which contain $525ZZ$ but which do not contain $105ZZ$
    + Show that there exists some surjective ring homomorphism $ZZ_525 -> ZZ_15$
])

=== Part 1

Note that all ideals of $ZZ$ are in the form $n ZZ$, where $n in ZZ$. Firstly, lets figure out what ideals contain 
$525 ZZ$. For the ideal $I := n ZZ$, if $n | 525$, then we will have that $525 in I$, and $525 k in I$ for any $k in ZZ$, 
so the set of ideals containig $525ZZ$ is given by $N ZZ$ where $N := {n in ZZ | n | 525}$, similarly, the set of 
ideals containing $105 ZZ$ is given by $K ZZ$ where $K := {n in ZZ | n | 105}$, so the set of ideals that contain 
$525ZZ$ but do not contain $105ZZ$ is $(N - K) ZZ$.

$
    N := { 1,3,5,7,15,21,25,35,75,105,175,525 } \
    K := {  1,3,5,7,15,21,35,105 } \
    N - K := { 25, 75, 175, 525 }
$

So the ideals are $25ZZ, 75ZZ, 175ZZ, 525ZZ$.

=== Part 2

We want to show that there exist some surjective ring homomorphism $f : ZZ_525 ->ZZ_15$. To do this, we will use that fact
that for  any ideal $I$ of $R$ the map

$
    phi : R -> R\/I := r |-> r + I
$

is a surjective ring homomorphism with kernel $I$. For this question, we will have $R = ZZ_525$, and we need to choose some 
ideal $I$ such that $R\/I = ZZ_15$ (up to homomorphism). This works when we choose $I$ to be $15 ZZ$, since we have that
$ZZ_525\/15 ZZ iso ZZ\/15 ZZ iso ZZ_15$, and the kernel is $ZZ_15$.

#pagebreak()
#homework(title: "3", [
    Let $ZZ[i]$ be the gaussian integers.

    + Show that $I := {a + b i | a eq.triple 2 b mod 5}$ is an ideal of $ZZ[i]$
    + Compute the cardinality of $ZZ[i] \/ I$
])


=== Part 1

To show that $I$ is an ideal, we need to show that $I$ is the kernel to some homomorphism. First, define $phi$ as follows

$
phi : ZZ[i] -> ZZ_5 := a + b i |-> a - 2 b mod 5
$

For any $a + i b in I$, we have that $a eq.triple 2 b mod 5$, so $a - 2 b eq.triple 0 mod 5$, meaning that the kernel of $phi$ is $I$.
To show that $I$ is an ideal, it must be the kernel of some _homomorphism_, so we need to show that $phi$ is a homomorphism.

Fix $a + b i, aa + bb i in ZZ[I]$, we must show $phi((a + b i) + (aa + bb i)) = phi(a + b i) + phi(aa + bb i)$:

$
    phi((a + b i) + (aa + bb i))
    &= phi(a + b i + aa + bb i) \
    &= phi((a + aa) + (b + bb) i) \
    &= (a + aa) - 2 (b + bb) mod 5 \
    &= (a - 2 b) + (aa - 2 bb) mod 5 \
    &= (a - 2 b) mod 5 + (aa - 2 bb) mod 5 \
    &= phi(a + b i) + phi(aa + bb i) 
$

Next, we will show that  $phi((a + b i) dot (aa + bb i)) = phi(a + b i) dot phi(aa + bb i)$, for this proof we will use the fact that $-1 eq.triple 4 mod 5$

$
    phi((a + b i) dot (aa + bb i))
    &= phi(a aa + a bb i + b aa  i + b bb i^2) \
    &= phi(a aa - b bb + (bb a + b aa) i) \
    &= a aa - b bb - 2 bb a - 2 b aa) mod 5 \
    &= a aa + 4 b bb - 2 bb a - 2 b aa) mod 5 \
    &= (a - 2 b) (aa - 2 bb) mod 5 \
    &= (a - 2 b mod 5) (aa - 2 bb mod 5) \
    &= phi(a + i b) dot phi(aa + i bb)
$

=== Part 2

We know that for any rings $R, S$, if we have group homomorphism $phi : R -> S$, then we know that $R\/ker(phi) iso phi(R)$.
Take $phi$ as defined above, $ker phi = I$, and $phi(ZZ[i]) = ZZ_5$, so we have that $ZZ[I]\/I iso ZZ_5$, thus, $|ZZ[I]\/I| = |ZZ_5| = 5$

#pagebreak()
#homework(title: "4", [
    $
        phi : ZZ[i] -> ZZ_5 := a + b i |-> a + 2 b mod 5
    $

    Show that the above mapping is a ring homomorphism, and that $5ZZ subset.neq ker phi$
])

To show that $phi$ is a group homomorphism, first, fix $a + b i, aa + bb i in ZZ[i]$, firstly, we need to show that $phi((a + b i) + (aa + bb i)) = phi(a + b i) + phi(aa + bb i)$

$
    phi((a + b i) + (aa + bb i)) 
    &= phi( (a + aa) + (b + bb) i) \
    &= a + aa + 2 (b + bb) mod 5\
    &= a + aa + 2 b + 2 bb mod 5\
    &= a + 2 b + aa + 2 bb mod 5\
    &= phi(a + b i) + phi(aa + bb i)
$

We also need to show that $phi((a + b i) dot (aa + bb i)) = phi(a + b i) dot phi(aa + bb i)$.

$

    phi((a + b i) dot (aa + bb i))
    &= phi(a aa + a bb i + b aa  i + b bb i^2) \
    &= phi(a aa - b bb + (bb a + b aa) i) \
    &= a aa - b bb + 2 bb a + 2 b aa mod 5 \
    &= a aa + 4 b bb + 2 bb a + 2 b aa mod 5 \
    &= (a + 2 b) (aa + 2 bb) mod 5 \
    &= phi(a + b i) dot phi(aa + bb i)
$

Thus we have shown that it is a homomorphism. Now we need to show that $x in 5ZZ[i] => phi(x) = 0$. Take $5 a + 5 bb i in 5 ZZ[i]$,
then we have $ phi(5a + 5bb i) eq 5a + 10 bb mod 5 eq.triple 5(a + 2 bb) mod 5 eq.triple 0 mod 5 $ however, there are also numbers
that are not in $5ZZ[i]$ but are also in the kernel for example, $2 + 4 i$. Thus we have shown that $ker phi != 5ZZ$, but $5ZZ subset ker phi$,
meaning that $5ZZ subset.neq ker phi$




