// Some global constants

#let name = "Angel Cervera Roldan"
#let student_number = "21319203"

#let vline(color: gray) = line(length: 100%, stroke: 0.5pt + color)

#let enumerated(func) = math.equation(block: true, numbering: "(1)", func, supplement: "Eq")

#let project(
    title: "",
    subtitle: "",
    authors: ( name, ), 
    topright: none,
    abstract: none,
    quote: none,
    toc: false,
    body) = {
    // Set the documents basic properties
    set document(author: authors, title: title)

    let authors_fmt = {
        // Author information
        let separator = ", "
        let l = authors.len()
        for i in range(l - 1) {
            authors.at(i)
            separator
        }
        authors.at(l - 1)
    }


    let header = {
        set text(10pt)
        smallcaps(name)
        h(11fr)
        let tr = if topright != none { topright } else { student_number }
        [_ #tr _]
        vline()
    }


    // SETUP THE TITLE
    [
        #vline()
        #set text(size: 1.25em, hyphenate: true)
        #set par(justify: false)

        // Title and subtitle
        #v(0.01fr)
        #text(size: 3.5em, strong(title))
        #if subtitle != none {
            v(0.01fr)
            vline()
            v(0.01em)
            text(size: 1.5em, subtitle)
        }
        #h(1fr) 
        #text(size: 1em, authors_fmt)

        #if abstract != none { 
            [_ #abstract _] 
        }

        #v(0.1fr)
        #if quote != none { [_ #quote _] }

    ]

    set text(font: "New Computer Modern", lang: "en")
    show math.equation: set text(weight: 400)


    set heading(numbering: "1.")
    show heading.where(
        level: 1
    ): it => [
        #block(width: 100%, below: 20pt)[
            #set text(30pt, weight: "bold")
            #set align(center)
            #context counter(heading).display()
            #smallcaps(it.body)
        ]
    ]


    // Main body.
    set par(justify: true)
    set page(
        numbering: "1",
        number-align: end,
        header: header
    )
    if (toc) { outline() }

    body
}

#let inv(x) = $#x^(-1)$

#let side_bar_box(
    line_color, 
    background_color,
    title,
    content,
) = {
    // Box containing all
    rect(
        inset: ( left: 1pt, right: 0pt, top: 0pt, bottom: 0pt ), 
        outset: 0pt,
        stroke: (
            left: 2pt + line_color,
        ),
        [
            // Make the title box
            #rect(
                fill: background_color,
                inset: 10pt,
                outset: 0pt,
                width: 100%, 
                radius: ( bottom-right: 12pt, top-right: 12pt ),
                align(left,title)
            )

            // A block for the body
            #block(
                inset: (left: 10pt, right: 10pt, bottom: 10pt), 
                outset: 10pt, 
                width: 100%,
                content
            )
        ]
    )
}


// Definitions
//
// Main color -- Lighter
// Side color -- Darker

#let def_color = (
    rgb(176, 224, 230, 255),
    rgb(145,255,255,100)
)

#let lemma_color = (
    rgb(52, 121, 40, 255),
    rgb(192, 235, 166, 100),
)

#let thm_color = (
    rgb(152, 125, 154, 255),
    rgb(187, 154, 177, 100)
)


#let def(title: none, content) = side_bar_box(
    def_color.at(0),
    def_color.at(1),
    if title == none { "Definition" } else { "Definition: " + title },
    content,
)

#let lemma(title: none, content) = side_bar_box(
    lemma_color.at(0),
    lemma_color.at(1),
    if title == none { "Lemma" } else { "Lemma: " + title },
    content,
)

#let thm(title: none, content) = side_bar_box(
    thm_color.at(0),
    thm_color.at(1),
    if title == none { "Theorem" } else { "Theorem: " + title },
    content,
)

// Homework
#let homework(title: none, content) = side_bar_box(
    thm_color.at(0),
    thm_color.at(1),
    if title == none { "Question" } else { "Question: " + title },
    content,
)

#let proof(title: none, content) = [
    #vline()

    #if title != none {
        [
            *Proof: #title*

            #vline()
        ]
    } else {
        [
            *Proof:*
        ]
    }

    #content

    #align(right, [*$square.big$*])

    #vline()
]

#let claim_proof(claim, p) = [
    #vline()

    *Claim:* #claim

    #proof(p)
]

