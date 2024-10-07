#import "../../../preamble.typ" : *

#import "@preview/fletcher:0.5.1" as fletcher: diagram, node, edge

#let iso = $tilde.equiv$

#def(title:"Ring and Field", [
	A ring is a set along with two binary operations $(R, +, dot)$, where $dot$ and $+$ are associative, $+$ is commutative, and $dot$ need not have an inverse for every elemnt. If it is the case that an inverse exists for every element, then we call it a field. Both rings and fields must also satisfy the following

	$
		(a + b) dot c &= a c + b c \
		c dot (a + b) &= c a + c b
	$
])



