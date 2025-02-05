#import "../preamble.typ" : *

#import "@preview/fletcher:0.5.1" as fletcher: diagram, node, edge

#let abstract = align(center, pad(top: 100pt, []))

#show: project.with(
    title: "PointSet Topology",
    subtitle: "",
    topright: "PointSet Topology Notes",
    abstract: abstract,
    quote: "",
)

#pagebreak()

== Preface

In these notes, my goal is to motivate and define what is thought on an introductory topology course,
to do this, I will be using both what I learn in lectures, as well as Munkres Topology Book.

There will be ocassional worked exercises throught the notes, these are mainly exercises found in the book
that I found helpful in understanding the subject.

#pagebreak()


#let groupsc = ( "metrics", "top_spaces", )

#include("./sections/" + groupsc.remove(0) + ".typ")
#for chapter in groupsc {
    pagebreak()
    include("./sections/" + chapter + ".typ")
}
