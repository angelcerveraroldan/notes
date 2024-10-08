#import "../preamble.typ" : *

#import "@preview/fletcher:0.5.1" as fletcher: diagram, node, edge

#let abstract = align(center, pad(top: 100pt, diagram(
    node-defocus: 0,
    spacing: (1cm, 2cm),
    edge-stroke: 1pt,
    crossing-thickness: 5,
    mark-scale: 70%,
    node-fill: luma(97%),
    node-outset: 3pt,
    node((0,0), "magma"),

    node((-1,1), "semigroup"),
    node(( 0,1), "unital magma"),
    node((+1,1), "quasigroup"),

    node((-1,2), "monoid"),
    node(( 0,2), "inverse semigroup"),
    node((+1,2), "loop"),

    node(( 0,3), "group"),

    {
    let quad(a, b, label, paint, ..args) = {
        paint = paint.darken(25%)
        edge(a, b, text(paint, label), "-|>", stroke: paint, label-side: center, ..args)
    }

    quad((0,0), (-1,1), "Assoc", blue)
    quad((0,1), (-1,2), "Assoc", blue, label-pos: 0.3)
    quad((1,2), (0,3), "Assoc", blue)

    quad((0,0), (0,1), "Id", red)
    quad((-1,1), (-1,2), "Id", red, label-pos: 0.3)
    quad((+1,1), (+1,2), "Id", red, label-pos: 0.3)
    quad((0,2), (0,3), "Id", red)

    quad((0,0), (1,1), "Div", yellow)
    quad((-1,1), (0,2), "Div", yellow, label-pos: 0.3, "crossing")

    quad((-1,2), (0,3), "Inv", green)
    quad((0,1), (+1,2), "Inv", green, label-pos: 0.3)

    quad((1,1), (0,2), "Assoc", blue, label-pos: 0.3, "crossing")
})))

#show: project.with(
    title: "Abstract Algebra",
    subtitle: "",
    topright: "Abstract Algebra Notes",
    abstract: abstract,
    quote: "For this proof, assume that group theroy is an interesting subject.",
)

#show heading.where(
  level: 1
): it => block(width: 100%)[
  #set align(center)
  #set text(30pt, weight: "bold")
  #smallcaps(it.body)
]
#pagebreak()

#let sections = ("gruops", "rings", "fields")

#heading("Group Theory")
#vline()

#let groupsc = ( "intro", "free_groups" )
#for chapter in groupsc {
    include("./notes/groups/" + chapter + ".typ")
}
#pagebreak()

#heading("Rings And Fields 1")
#vline()

#let ringsc = ( "intro", )
#for chapter in ringsc {
    include("./notes/rings/" + chapter + ".typ")
}


