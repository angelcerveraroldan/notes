#import "../../preamble.typ" : *

#let dx = $d_x$
#let dy = $d_y$

#let aa = $alpha$
#let bb = $beta$

= Metric Spaces

A metric space is a set along with a distance function, very much like the real numbers,
where the distance between $a$ and $b$ is given by $abs(a - b)$. Using this generic
distance function, we can proof many of the same things you may have covered in real analysis,
(such as convergence, and continuity) but in a more generic sense, where we many not be dealing
with real numbers in a flat plane. More formally, a metric space is just a tuple $(X, d)$, where 
$X$ is some set, and $d$ a *metric function*.

#def(title: "Metric Function", [
  A function $d : X times X --> RR$ is called a metric function if:

  1. $d(x, y) = 0 <==> x = y$
  2. $d(x, y) >= 0$
  3. $d(x, y) = d(y, x)$
  4. $d(x, z) <= d(x, y) + d(y, x)$
])

All of the above axioms should make pretty intuitive sense, for example (1) tells us that
if two points are 0 apart, they must be the same point, and (4) tells us that if in going from
$x$ to $z$, we take a detour to go some point $y$, it will at best not add any distance to
the total travelled.

*Examples:*

One simple example, the the distance by two real numbers, $(RR, d)$, where $d(a, b)=|a-b|$

Another simple example, is the standard eucledian distance in a 2d plane $(RR^2, d)$

The above metric can be generalised, $(RR^n, d)$ is a metric space for any $n in NN$ where

$
  d(x, y) = sqrt(sum_i (x_i - y_i)^2)
$

*Note:* We are about to start dealing with functions between metric spaces, given two metric
spaces $(X, dx)$ and $(Y, dy)$, when we write $f:X->Y$, we really mean $f:(X, dx) -> (Y,dy)$,
however, writting all that is tedious, and almost always will create confusion and clear nothing up.

#def(title: "Continuity", [
  Take some metric spaces $(X, dx)$ and $(Y, dy)$, and some function $f:X->Y$, we say that
  $f$ is continuous at some point $x in X$ if $forall epsilon in RR_+$ there exists some $delta in RR$
  such that:

  $
    x' in X, space dx(x, x') <= delta ==>  dy(f x, f x') <= epsilon
  $
])

Further expanding on the above theorem, if $f$ is continuous at $x$ for any $x in X$, then we just say
that $f$ is continuous. This definition is pretty much exactly the same as the one seen in intro 
to alnalysis, but replace the absolute values, with a function. We can now prove theorems!


#thm(title: "Composition perserves continuity",[
  Take two functions $f : X -> Y$ and $g : Y -> Z$ such that they are both continuous,
  then their composition $g compose f : X -> Z$ is also continuous
])

#proof([
  Given some $epsilon in RR_+$, we will first use the fact that $g$ is continuous to find some $delta'$ such that:

  $
    dy(u, u') < delta'  ==>  d_z (g u, g u') < epsilon
  $

  Now we use the fact that $f$ is continuous to find some $delta$ such that

  $
    dx(x, x') < delta  ==>  dy (f x, f x') < delta'
  $

  Putting it all together:

  $
    dx(x, x') < delta
      ==>  dy (f x, f x') < delta'
      ==>  dy ((g compose f) x, (g compose f) x') < epsilon
  $
])

#lemma(title: "Important Inequalities", [
  Take $p, q in NN$, then we have the following inequalities:

  *Holder Inequality*) If $inv(p) + inv(q) = 1$, then we have that:
  $
    sum abs(x_i y_i) <= ||x||_p ||y||_q
  $

  *Minkowski Inequality*) $ ||x + y||_p <= ||x||_p + ||y||_p $
])

