#import "../preamble.typ" : *

#let abstract = [
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
]

#show: project.with(
    title: "Algos & DS",
    subtitle: "Competitive Programming Notes",
    topright: "Competitive Programming",
    abstract: abstract,
    quote: "Some fun quote here!",
)

#pagebreak()

= Trees


== Fenwick Trees

To move donwards on the tree, we can use the function $f(i) =  i & (i + 1)$, to move upwards in the tree, we can use the the function $g(i) = i | (i + 1)$.

