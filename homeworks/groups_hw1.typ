#import "../preamble.typ" : *
#import "@preview/xarrow:0.3.0": xarrowDouble, xarrowSquiggly, xarrowTwoHead

#let iso = $tilde.equiv$
#let pp = $rho$
#let aa = $alpha$
#let oo = $sigma$
#let kk = $kappa$
#let tt = $tau$

#let al = $angle.l$
#let ar = $angle.r$

#let diff(x) = $d/(d #x)$

#show: project.with(
    title: "Groups 2",
    subtitle: "Assignment 1",
    abstract: [
        #align(center, pad(top: 100pt, []))
    ],

)


#pagebreak()
#homework(title: "1", [
    Given $P$ a pgroup, and $N lt.tri G$ where $N$ is not the trivial subgroup, show that there exists some $n in N - {e}$ such that 
    $forall g in P$, $g n inv(g) = n$
])

Note that if such $n$ exists, then it must be an element of $Z(P)$ by definition.

$
    Z(P) = {p in P | g p inv(g) = p forall g in P}
$

Also, note that $N$ must also be a pgroup, since the order of $N$ must divide the order of $P$, so $|N| =  p^k$ for some $k in NN$, and $k$ cannot be 0,
as we know that $N$ is not the trivial group. Let $P$ act on itself under conjugation, and define the conjugacy class conataining $p in P$ as $C_p$.

Take some element $n in N$, and some $p in P$, since $N$ is a normal subgroup, we have that $p n inv(p) in N$, this is true for every $p in P$, thus we know that for each $n in N$, every element in $C_n$ is also in $N$. Now we will write $N$ as the union of conjugacy classes with representatives $n_1, n_2, ..., n_k$

$
    N &= union.big_(i=1)^k C_(n_i) \
    |N| &= sum_(i=1)^k |C_(n_i)|
$

The order of any of the conjugacy classes must divide the order of $N$ (they are orbits), meaning that for any $i$, $|C_(n_i)|$ is a power of $p$. Also,
$e in N$, and the conjugacy class containing $e$ is ${e}$, thus $|C_e| = 1$.

$
    |N| = 1 + sum_(i=2)^k |C_(n_i)|
$

Since we know that the order of an orbit divides the order of the group, we must have that $|C_n_i|$ divides $|N|$, thus $|C_n_i| = p^l$ for some $l in NN$.
Assume the every other cojugacy class has order greater than 1.

$
    1/p |N| 
        &= 1 / p + sum_(i = 2)^k 1/p |C_n_i| 
$

By assumption, for $i >= 2$, we have that $|C_n_i| != 1$, $1/p |C_n_i| in NN$, also, $1/p |N| in NN$ since $N$ is not the trivial group. But since $1/p in.not NN$, this gives us a contradiction, meanig that there must be some other conjugacy class of order $1$. Wlog, let this conjugacy class be $C_n_2$.

Then $n_2$ must also be in $Z(P)$, and thus we have found such element.

#pagebreak()
#homework(title: "2", [
    Find the order of $G = angle.l a, b | a^2 = b^2 = (a b)^2 angle.r$
])

Firstly, we can find the order of $a$, we know that $a^2 = a b a b$, thus $a = b a b$, squaring that, and using the fact that $a^2 = b^2$, we get 
that $b^2 = a^2 = b a b b a b$, and therefore, $e = a b b a = a b^2 a = a^4$. Now we can rewrite $G$ as follows:

$
    G = angle.l a, b | a^2 = b^2, a^4 = e, a^2 = (a b)^2 angle.r
$

Also notice that saying $a^2 = (a b)^2$ is equivalient to $a = b a b$ ($a a = a b a b <==> a = b a b$), so we can once again rewrite $G$ as follows

$

    G = angle.l a, b | a^2 = b^2, a^4 = e, a = b a b angle.r
$

The above presentation is exactly the presentation for the quaternion group. Thus $G iso Q_8$, and $|G| = 8$

#pagebreak()
#homework(title: "3", [
    Find the order of $G$, where $G$ is given by the following presentation
    $ al s_1, s_2, s_3 | s_1^2, s_2^2, s_3^2, (s_1 s_2)^3, (s_2 s_3)^3, (s_1 s_3)^2 ar $
])

Define $H := al s_1, s_2 ar$, we can also find another three different cosets:

$
    s_3 H \
    s_2 s_3 H \
    s_1 s_2 s_3 H \
$



Of course, $s_2 H, s_1 H$ are already in $H$, then $s_1 s_3 H$ will be contained inside $s_1 s_2 s_3 H$, as that contains $s_1 (s_2 s_3) (s_2 s_3) (s_2 s_3) H = s_1 H$, so the above are all the possible cosets.

Since we know that $|al s_1 s_2 ar| = 6$, then we have an upper bound for $|G|$ of $6 times 4 = 24$

Notice that we can also find a bijection $phi : G -> S_4$, we have that any element of $H$ will be mapped to some element of $s_3 H$ by left multiplication by $s_3$, and then mapped back to $H$ by left multiplication again. Similarly, we can go from $s_3 H$ to $s_2 s_3 H$ by left multiplication by $s_2$, we do the same thing to go from $s_2 s_3 H$ to $s_1 s_2 s_4$. This bijection shows that there is a lower bound of 24 for the order of $G$, so the order of $G$ must be 24

#pagebreak()
#homework(title: "4", [
    Find the order of $G = angle.l a, b, c, d |  a b = c, b c = d, c d = a, d a = b angle.r$
])

$a = c d = a b d => e = b d$, therefore, $d = inv(b)$, since we also know that $d = b c$, then we must have that $c = b^(-2)$, then $a = c d = b^(-2) inv(b) = b^(-3)$. We have thus written every element in terms of $b$, therfore, $G = angle.l b angle.r$

Also, $b^(-2) = c = a b = a d a = b^(-3) inv(b) b^(-3) = b^(-7)$, multily both sides by $b^7$, and we get that $b^5 = e$, so we have that the order of $b$ is 5. Since $b$ generates the group $G$, we must thus have $|G| = 5$


