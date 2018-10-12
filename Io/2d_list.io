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

a := TwoD clone
# a self println
a dim(4, 4)
a value println
a set(2, 2, 2)
a value println
a get(2, 2) println
