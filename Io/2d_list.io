TwoD := Object clone
TwoD value := list()

TwoD dim := method(x, y,
  newList := list()
  while (y > 0,
    i := 0
    innerList := list()
    while (i < x, innerList append(nil); i = i + 1)
    y = y - 1;
    newList append(innerList);
  )
  self value = newList
)

TwoD set := method(x, y, val,
  (self value) at(y) atPut(x, val)
)

TwoD get := method(x, y,
  (self value) at(y) at(x)
)

TwoD transpose := method(
  self value = (value at(0)) map (i, x, value map (el, el at(i)))
)

a := TwoD clone
# a self println
a dim(2, 2)
a value println
a set(0, 0, 1)
a set(0, 1, 2)
a set(1, 0, 3)
a set(1, 1, 4)
a value println
a get(1, 1) println
a transpose
a value println
