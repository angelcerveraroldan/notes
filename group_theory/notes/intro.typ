#import "../../preamble.typ" : *

#import "@preview/fletcher:0.5.1" as fletcher: diagram, node, edge

= Intro -- Groups 1 Mini Recap

#def(title:"Group", [
    A pair $(G, star)$, where $G$ is some set, and $star: G times G -> G$ is a binary operation, is called a group if
    the following axioms hold:

    1. $star$ is associative
    2. $exists e in G$ such that $forall g in G$ $star(g, e) = g = star(e, g)$
    3. $forall g in G$ we can find some $q in G$ such that $star(g, q) = e = star(q, g)$
])

#thm(title: "Cayleys Embedding Theorem", [
    Given some finite group $G$, $G$ is isomorphic to some subgroup of $S_n$.
])

Before proving this theorem, we will re-write a few definitions from last group theory class. Firstly, what is an isomorphism, 
an isomorphism is a bijective homomorphism, where a homomorphism is a morphism between groups $f: G -> H$, such that the following holds:

$ forall g, q in G ==> f(g) dot_H f(q) = f (g dot_G q) $

Also, the permuttation group $S_n$ can be thought of as the set of bijections $f : G -> G$, along with the operation $compose$ of composition. 


#proof([
    We claim that the function $f : G -> (G -> G) = g |-> (pi_g = x |-> g x)$ is a bijection from $G$ to some subgroup of a symmetric group.
    
    Firstly, we will show that $f$ is a homomorphism. Let $a, b in G$

    $
    f(a) f(b) 
    &= pi_a compose pi_b \
    &= (x |-> a x) compose (x |-> b x) \
    &= (x |-> a b x) \
    &= (x |-> (a b) x) \
    &= f(a b) \
    $

    Thus, $f$ is a holomorphism. To show that $f$ is also an isomorphism, we need to show that $f$ is bijective. 

    $
    f(a) = f(b) =>
    (x |-> a x) = (x |-> b x) =>
    forall x in G space a x = b x => 
    a = b
    $

    Thus, we know that $f$ is an an isometry, meaning that $G tilde.equiv (Im f, compose)$. The last thing to show
    is that $(Im f, compose)$ is a subgroup of $S_k$. To show this, we need to show that $f_g$ is a bijection for any
    fixed $g in G$. Take $x, y in G$

    $
        pi_g x &= pi_g y \
        g x &= g y \
        x &= y \
    $

    We also need to show that for any $k in G$, there exists some $a in G$ such that $pi_g a = k$

    $
        pi_g a = k => g a = k => a = g^(-1) k in G
    $

    Therefore, we have shown that $Im f <= S_k$, thus, $G$ is isomorphic to a subset of a symmetric group.
])

