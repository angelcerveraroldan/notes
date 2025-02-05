#import "../preamble.typ" : *
#import "@preview/bob-draw:0.1.0": *
#import "@preview/fletcher:0.5.4" as fletcher: diagram, node, edge
#import "@preview/diagraph:0.3.1"

#let bob = render(
```
         /\_/\ 
bob ->  ( o.o )
         \ " /
  .------/  /
 (        | |
  `====== o o
```)

#let abstract = align(center, pad(top: 200pt, bob))

#show: project.with(
    title: "Graph Theory",
    subtitle: "",
    topright: "Graph Theory Notes",
    abstract: abstract,
    quote: "",
)

= Introduction To Graphs

#def(title: "Graph", [
  A graph is a pair $(V, E)$, where $V$ is a finite set, and $E$ is a set of set-pairs (subsets of $V$ with size two)
])

We will also define the order / size of a graph as the order of $V$

Two very common examples, the Cyclic Graph of order $n$, denoted by $C_n$ can be thought of as the integers modulo $n$, and $K_n$, the Complete Graph of order $n$, is a graph of order $n$, where every two nodes has an adge connecting them. Graphed below we can see $C_n$, and $K_5$. 

#align(center, grid(
  columns: (auto, auto),
  align: center, 
  gutter: 50pt,
  pad(top: 25%, diagram($
    1   edge("r") &  
    2   edge("r") &
    3   edge("r") &
    ... edge("r") &
    n   edge("d,llll,u") &
  $)),
  diagram($
    & a 
    edge("dl")
    edge("ddl")
    edge("dr")
    edge("ddr")
    \
    b 
    edge("d")
    edge("rr")
    edge("drr")
    && 
    c 
    edge("d")
    edge("dll")
    \
    d 
    edge("rr")
    && e 
  $)
))

#grid(
  columns: (auto, auto),
  gutter: 20pt,
  [
    The diagrams we saw above have some nice properties, in fact, they are called *Simple Graphs*, as there is a maximum of one edge connecting any two vertices and there are no edges from some node to itself. If a graph is not simple, then we call it a multigraph. 
  ],

  diagram(
    spacing: 4em,
    node((0,0), `a`),
    node((2,0), `b`),
    edge((0,0), (0,0), `loop`, "~", bend: 130deg),
    edge((0,0), (2,0), ``, "-", bend: -40deg),
    edge((0,0), (2,0), ``, "-"),
  )
)


#thm([
  Given some graph $G = (V, E)$ we have that 

  $
    sum_V deg v = 2 dot abs(E)  
  $
])