#import "../../preamble.typ" : *

#let dx = $d_x$
#let dy = $d_y$

#let aa = $alpha$
#let bb = $beta$

#let tp = $cal(T)$

= Topological Spaces

#def(title: "Topological Spaces", [
  A topology on some set $X$ is a collection $tp$ of subsets of $X$ such that:
  + Both $diameter$ and $X$ are elements in $tp$
  + The union of the elements of anyn subcollection of $tp$ is in $tp$
  + The intersection of _finitely many_ elements in $tp$ is also in $tp$

  The set $X$ along with a topology is called a topological space.
])

