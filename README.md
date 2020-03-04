# Math-tree

This gem is a fun little tool for converting mathematical expressions into decision trees and
evaluating them as such.

```
Math::Tree.new("2*(3+4)").draw # =>

  *
 / \
2   +
   / \
  3   4
```

```
Math::Tree.new("2*3+4").draw # =>

  +
 / \
3   *
   / \
  2   3
```
