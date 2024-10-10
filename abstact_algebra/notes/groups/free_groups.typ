#import "../../../preamble.typ" : *

#import "@preview/fletcher:0.5.1" as fletcher: diagram, node, edge

== Free Groups

#def(title: "Free Group", columns(2, gutter: 11pt)[
    Given some set $X$, the group $F_X subset.eq X$ is called the free group of $X$ if the following diagram commutes for any given $f : X -> G$, where $G$
    is any arbitrary group.

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

Also, it can be seen that the homomorphism $tilde(f)$ is an epimorphism.
