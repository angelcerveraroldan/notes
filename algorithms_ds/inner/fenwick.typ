#import "../../preamble.typ" : *

= Fenwick Trees

Fenwick trees can be used for efficient range / update queries. Both ranges and updates run in `O(log(n))`, and `O(n)` in memory. Fenwick trees are simpler to implement, and faster than segment trees, however there are many cases where a segment tree can be used, but a fenwick tree cannot be used.

#def(title: "Traversal Functions", $
    g(i) = i space \& space (i + 1) \
    f(i) = i space \| space (i + 1) \
$)

Given some input $a_1, a_2, ..., a_n$, a fenwick tree can be represented as an array $t_1, t_2, ..., t_n$. Where $t_i$ represents:

$
    t_i = sum_(k=g(i))^i a_k
$


$
    sum_(i=0)^r a_i = t_i + t_(g(i) - 1) + ... + t_(m)
$

where $g(m) - 1$ is -1. Intuitively, the function $g$ will help us traverse the tree downwards. Then the function $f$ will help us move upwards! 
That is to say, if we want to modify some $a_i$, what elemnts of the tree will this affect ? Firstly, it will affect $t_i$, then it will affect $t_j$ where $j := f(i)$, then $t_u$ where $u := f(j)$, and so on until we are no longer in range.

== Implementation

Generally, the easiest way to go about implementation is to make a tree array (of the max size that we wil ever nned), as well as a global length variable (how much of that array are we actually using). Then we can mutate it in the update function. If we initialize the tree array with the group identity, then to fill the array in `O(nlog(n))`, we can just update each index as we get input.

When you want to change some `index` to be some `value`, you must iterate all of the nodes that are affected by said change as follows:

```cpp
// A way to remove the old element (group operation of a and its inverse is always 0)
A inverse = inv(a_index);
A new_value = group(inverse, value);
for (int i = index; i > 0; i = f(i))
{
    tree[i] = group(tree[i], new_value);
}
```

And when we want to get the group opearation of all elements from $a_0$ to $a_n$:

```cpp
// This is usually the integer 0, but more genrally the identity of the group 
A acc = A::identity;
for (int i = n; i > 0; i = g(i) - 1) acc = group(tree[i], acc);
return acc
```


