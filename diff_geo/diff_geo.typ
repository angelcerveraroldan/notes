#import "../preamble.typ" : *

#import "@preview/fletcher:0.5.1" as fletcher: diagram, node, edge

#let abstract = align(center, "")

#show: project.with(
    title: "Diff Geometry",
    subtitle: "",
    topright: "Differential Geometry Notes",
    abstract: abstract,
    quote: "",
)

#let chapters = (
    "formulas",
)

#pagebreak()

#for chapter in chapters {
    include("./notes/" + chapter + ".typ")
}

