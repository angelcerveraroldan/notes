#import "../../preamble.typ" : *

#let aa = $alpha$

= Important Formulas

Given some *unit speed* curve $aa: R -> RR^3$, define the following:

#grid(
    columns: (1fr, 1fr, 1fr),
    $
    T = aa'
    $,

    $
    N = T'/(||T'||)
    $,

    $
    B = T times N
    $
)

And $kappa := ||T'||$, $tau := N' times B$


#def(title: "Frenet–Serret formulas", [
    $
    vec(T', N', B') 
    = 
    mat(
        0, kappa, 0;
        -kappa, 0, tau;
        0, -tau, 0;
    )
    vec(T, N, B) 
    $
])

== Foundamental Forms

Take some $sigma: RR^2 -> RR^2$, then define the following:

#grid(
    columns: (1fr, 1fr, 1fr),
    $
    E = sigma_u dot sigma_u
    $,

    $
    F = sigma_u dot sigma_v
    $,

    $
    G = sigma_v dot sigma_v
    $
)

Then the first fundamental form is the following matrix:

$
    I := mat(E, F; F, G)
$

For the second fundamental form is given by the matrix $I I$, where:

$
    I I := mat(e, f; f, g)
$

#grid(
    columns: (1fr, 1fr, 1fr),
    $
    e = N dot sigma_(u u)
    $,

    $
    f = N dot sigma_(u v)
    $,

    $
    g = N dot sigma_(v v)
    $
)

#def(title: "Gaussian Curvature and Mean Curvature", [
    Gaussian curvature $K$ and Mean Curvature $H$ are given by:

    $
        K := det(I I dot I^(-1)) = (e g - f^2)/(E G - F^2)
    $

    $
        H := 1/2 tr(I I dot I^(-1)) = (e G + g E - 2 f F)/(2 (E G - F^2))
    $
])

