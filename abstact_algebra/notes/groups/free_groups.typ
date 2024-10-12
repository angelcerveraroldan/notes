#import "../../../preamble.typ" : *

#import "@preview/fletcher:0.5.1" as fletcher: diagram, node, edge

== Free Groups

#def(title: "Free Group", columns(2, gutter: 11pt)[
    Given some set $X$, the group $F_X subset.eq X$ is called the free group of $X$ if for any $f : X -> G$ (where $G$ is any group), there exist a unique homomorphism $tilde(f)$ (epimorphism!) st the following diagram.

    The function $pi$ can be thought of as the identity function, but it can really be any injective function. (containment function)

    #colbreak()

    #align(center, diagram(cell-size: 15mm, 
        $
            X 
                edge(f, ->) 
                edge("d", pi, "hook->") 
                & 
            G 
                \
            F_X 
                edge("ur", tilde(f), "-->")
        $
    ))
])

One example of a free group (sometimes used to define them) is the group $W(X union inv(X))$, where, $W(X)$ is the words monoid of $X$, or the set of finite sequences (called words) of elements in $X$, along with the operation of concatonation

$
    (a_1, a_2, ..., a_n) dot (b_1, b_2, ..., b_m) := (a_1, a_2, ..., a_n, b_1, b_2, ..., b_m)
$

Also, $inv(X)$ is a helper set ${inv(x) | x in X}$ (note that $x$ need not have an inverse, we are just defining a new set, another maybe better way to think of $inv(X)$, is as another set of the same cardinality as $X$, along with a bijection $X -> inv(X)$, if $x |-> a$, then we will think of $a$ as the inverse of $x$. Imagine if $X$ was the english alphabet).

We can show that this now forms a group of equivalence relations. Given some word, we can replace $x inv(x)$ with nothing. We can do this to simplify words, $a b inv(b) c ~ a c$, thus forming the equivalence relation. Conacatonation as defined for the monoid will actually be a group operation, meaning $W(X union inv(X))$ is not just a monoid, but also a group.

We can show that this group is a free group, since we can construct the unique homomorphism.




