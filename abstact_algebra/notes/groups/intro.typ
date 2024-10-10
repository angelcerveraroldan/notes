#import "../../../preamble.typ" : *

#import "@preview/fletcher:0.5.1" as fletcher: diagram, node, edge


#let iso = $tilde.equiv$
#let nsub = $lt.tri.eq$

== Quotient groups

One way to define quotient groups, is by using a group homomorphism. Let $G$ be some group, and define some $psi : G -> H$ homomorphism.
For any $g in G$, we have some $h = psi g in H$, however, there may exists another $g' in G - {g}$ such that $psi g' = psi g$. We will
define the set $G_h$ as every $g in G$ such that $phi g = h$. We will call this partitionng the _fiber above $h$_, or the _$h$ fiber_.

$
    G_h = { g in G | phi g = h}
$

Now, we can show that the set of all fibers of $G$ as a group, which we will denote with $G \/ ker(phi)$ 
using $phi$ to get its binary operation. Let $h, h' in H$, then we can operate its fibers as follows: 

$ G_h times G_(h') = G_(h h') $


#lemma([
    For any $g in G$, every element in $G_(phi g)$ by $g k$ for some $k in ker phi$.

   $ G_(phi g) = g ker phi = {g k | k in ker phi} $
])

#proof([
    Take some element $h in H$, and its fiber $G_h$. Now take $g, hat(g) in G_h$, we claim that $G_h = g ker phi$, meaning that
    $hat(g) = g k$ for some $k in ker phi$. 


    $
        phi hat(g) = phi g  <==>
        phi (inv(g)) phi (hat(g)) = 1 <==>
        phi (inv(g) hat(g)) = 1  <==>
        inv(g) hat(g) = k in ker phi <==>
        hat(g) = g k
    $


])

We can also see that all fibers must have the exact same size. Take some $g in G_h$, then we know that $G_h = g ker phi$. If we fix 
said $g$, we can create a mapping from the kernel to $G_h$ as follows $k |-> g k$. This is bijection, since we know that $g ker phi = G_h$.
Therefore, they must have the same size, so we know that the size of $G$ is some multiple of the size of the kernel of $phi$.

== Normal Subgroups

#def(title:"Normal Subgroups", [
    Let $N <= G$, then the following are equivalent:

    + $N nsub G$
    + $N_G(N) = G$
    + $forall g in G$ we have that $g N = N g$
    + $g N inv(g) subset.eq N$
])

From the above, we can see that if $N <= G$, then $N$ is normal iff there exists some homomorphism $phi$ such that $ker phi = N$

