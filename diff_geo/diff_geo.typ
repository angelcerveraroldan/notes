#import "../preamble.typ" : *

#import "@preview/fletcher:0.5.1" as fletcher: diagram, node, edge

#let abstract = align(center, "TODO")

#show: project.with(
    title: "Diff Geometry",
    subtitle: "",
    topright: "Differential Geometry Notes",
    abstract: abstract,
    quote: "",
)

#let chapters = (
    "intro",
)

#pagebreak()

#for chapter in chapters {
    include("./notes/" + chapter + ".typ")
}

