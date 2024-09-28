#import "../../preamble.typ" : *

#import "@preview/fletcher:0.5.1" as fletcher: diagram, node, edge

#def(title:"Words Monoid", [
    Given some set $S$, we can define the words of $S$ as every finite sequence of elements in $S$.

    Given two words, there also exists a "natural" binary operation of concatonation. That is to say $(a_1, ..., a_n) dot.op (b_1, ..., b_k) := (a_1, ..., a_n, b_1, ... , b_k)$. Of course, if $k = 0$, then $a dot.op b = a$, meaning that the empty sequence is the (unique in equivalience relation, defined later) identity of this set.

    Then we can define a monoid $W(S)$ as the set of all words that can be generated from $S$, along with the natural operation defined above.
])

Given some set $S$, we can construct another set $inv(S) := {inv(s) | s in S}$. Then, $W(S union inv(S))$ would focibly have an inverse for every element, thus it got an upgrade, from a monoid to a group! This group is denoted as $F(S)$. It is important to note that it may not always make intuive sense for an elemnt of a set to have an inverse, for example, if $S$ is the english aphabet, then wtf is $inv(S)$.

#thm([
    Given any group $G$, and some mapping $phi : S -> G$, there exists a _unique_ homomorphism $psi : F(S) -> G$ such that the following graph commutes. 

    (Note that $iota$ is an inclusion function, but could be changed to any injection).

    #align(center, diagram(cell-size: 15mm, 
        $
            S edge("r", phi, ->) edge("d", iota, "hook-->")
               &
            G 
                \
            F(S) edge("ur", psi, "->")
        $
    ))
])
