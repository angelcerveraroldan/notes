#import "../../preamble.typ" : *

= Differential Geometry Introduction

This class will deal with 1d curves, and 2d surfaces in the 3d world, and we will explore what their curvature is.
Imagine a 1d curve in the standard x-y plane. If there was a 1d person living in that curve, would they be able to tell
where along that curve there is more curvature. That is to say, wold they be able to tell the difference between $y = 2$,
and $y = x^2$ ? 

This leads us to the notion of curvature. There are two kinds of curvature, intrinsic, and extrensic.

== Topology Intro

In topology, we say that two shapes are equivalent, if there exists a countinuous bijection from one shape to the 
other one, for example, a flat piece of paper is the same shape if we were to curve it. Intuitively, this bijection
tells us that we can go from one shape to the other without making any drastic changes (such as ripping the page in half,
and then joining them in some weird way).

There are many shapes that are topologically equivalent, so this raises one question, if we have some shape, can we 
find a bijection to an "easier" shape ? If so, we can work with an easier shape, and still understand more about the
original one!

#def(title: "Curve", [
    Given some interval $I$, a curve $alpha$ is defined as a triple of continuous function $alpha_x, alpha_y, alpha_z in (RR -> RR)$.

    Throughout this course, we will mainly be dealing with smooth curves, these are curves that are infinitely differentiable. Unless otherwise stated, take curve to mean smooth curve.
])

Given some smooth curve $alpha$, we can define a new smooth curve $alpha'$, consisting of $alpha_x ', alpha_y ', alpha_z '$.


