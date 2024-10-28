#import "../preamble.typ" : *
#import "@preview/xarrow:0.3.0": xarrowDouble, xarrowSquiggly, xarrowTwoHead

#let iso = $tilde.equiv$
#let pp = $rho$
#let aa = $alpha$
#let oo = $sigma$
#let kk = $kappa$
#let tt = $tau$

#let diff(x) = $d/(d #x)$

#show: project.with(
    title: "Rings & Fields",
    subtitle: "Assignment 1",
    abstract: [
        #align(center, pad(top: 100pt, []))
    ]
)


#pagebreak()
#homework(title: "1", [
    Define a binary operation $times$ on $RR$ as follows
    $ a times b := 2 a b + a + b $

    Show that $times$ is associative, find the $times$ identity, and show that $forall a in RR - { - 1/2 }$, there exists a $times$ inverse for $a$
])

Associative:

$
    (a times b) times c
    &= (2 a b + a + b) times c \
    &= 2 (2 a b + a  + b) c + 2 a b + a + b + c \
    &= 4 a b c + 2 a c + 2 b c + 2 a b + a + b + c \
    &= 2 a (2 b c + b + c) + a + 2 b c + b + c \
    &= a times (2 b c + b + c) \ 
    &= a times (b times c) \ 
$


The identity is $0$

$
    a times 0 = 2 (a dot 0) + a + 0 = a = 2 (0 dot a) + 0 + a = 0 times a
$

Inverse of $a != - 1/2$, we must find some $a' in RR$ such that $a times a' = 0$

$
    0 = (a times a') = 2 a a' + a + a' = a' (2 a + 1) + a ==> a' = -a/(2 a + 1)
$

The above is not defined (only) when $a = - 1/2$, meaning that $forall a in RR-{-1/2}$, there exists an inverse for $a$.

#homework(title: "2", [
    Find all values of $x in ZZ_n$ for the following equations
    #grid(
        columns: (1fr, 1fr, 1fr),
        gutter: 15pt,
        [
            Part 1:
            $n = 7, space 3 + x = 0$

        ],
        [
            Part 2: $n = 13, space 3x = 1$
        ],
        [
            Part 3: $n = 16, x^2 = 1$
        ],
    )
   ])

=== Part 1

$
    3 + x = 0 
    <==> 3 + x = 7n, space n in ZZ 
    <==> x = 7n - 3, space n in ZZ 
$

Thus we know that the set of solutions for $x$ (modulo $7$) is ${4}$, so $x = 4$ is the only solution

=== Part 2

$
    3x = 1 
    <==> 3x = 13n + 1, space n in ZZ 
    <==> 27 x  = x = 13n + 9 in ZZ
$

So the only answer in $ZZ_13$ is $x = 9$


=== Part 3

$
    x^2 = 1
    <==> x^2 = 16n + 1, space n in ZZ
$

So $x$ will have a unique solution for each $n$ such that $16n + 1$ is a square number smaller or equal to $16^2$.
This gives us the set of solutions for $x$ of ${1, 7, 9, 15}$

#let MX = $mat(0, 1; -1, -1)$
#homework(title: "3", [
    Show that $R$ is a subring of $"Mat"_2(QQ)$

    $
        R := {a I + b X | a, b in QQ}, " where " X := mat(0, 1; -1, -1)
    $
])

To show that it is a subring, we must show that $forall r, l in R$ we have that $r l in R$, and $r - l in R$.
Fix $r, l in R$, and let $a, b, aa, oo in QQ$ such that $r = a I + b X$ and $l = aa I + oo X$


$
    r - l = (a I + b X) - (aa I + oo X) = a I + b X - aa I - oo X = (a - aa) I + (b - oo) X in R
$

Note that the last step works because $a, aa in QQ ==> a - aa in QQ$ ($QQ$ forms a ring), and matrix addition is commmutative.
So this shows that $r - l in R$, we now need to show that $r l in R$.

To do this, we will first make the following observation: 

$
    X^2 = MX^2 = mat(-1, -1; 1, 0) = mat(-1,0; 0,-1) + mat(0, -1; 1, 1) = (-1) I + (-1) X in R
$

Then we can see that

$
    r l 
    &= (a I + b X) (aa I + oo X) \
    &= (a aa) I^2 + (a oo) I X + (b aa) X I + (b oo) X^2 \
    &= (a aa) I + (a oo) X + (b aa) X + (b oo) X^2 \
    &= (a aa) I + (a oo + b aa) X + (b oo) X^2 \
    &= (a aa) I + (a oo + b aa) X + b oo (- I - X) \
    &= (a aa) I + (a oo + b aa) X - b oo I - b oo X \
    &= (a aa - b oo) I + (a oo + b aa - b oo) X \
$

And since $a aa - b oo, a oo + b aa - b oo in QQ$, we have that $r l in R$, thus we have that $R$ forms a subring.

#homework(title: "4", [
    Find a subring of $Z_12$ isomorphic to $Z_4$
])

First, we claim that $H = {0, 3, 6, 9}$ is a subring of $Z_12$. To prove this, note that $H$ contains all multiples of 3. Ie $3n mod 12 in H forall n in ZZ$

Take $a, b in H$, then $a = 3n$, and $b = 3m$ for some $n, m in ZZ$. $a - b = 3(n - m) in H$, since it is also a multiple of 3. Also, 
$a b = (3 n) (3 m) = 3 (3 n m) in H$ since it is also a multiple of 3.



$
    e^2 = e mod 12 ==> e in {0,1,4,9}
$

$
    4 e = 0 mod 12 ==> e in {0, 3, 6, 9}
$

Thus, $e_H = 9$. To form an ismorphism, we need to have $phi(1)=9$, then (for $phi$ to be a homomorphism) we are forced to set $phi(2) = 6$, $phi(3) = 3$, $phi(0) = 0$. This leaves us with $phi:Z_4 -> H$ bijective homomorphism, meaning $H iso ZZ_4$.

