List myAverage := method(if (self size == 0, 0,
  total := 0
  i := 0
  while(i < self size,
    if (self at(i) type == "Number",
      total = total + self at(i),
      Exception raise("List contains non-numbers")
    );
    i = i + 1;
  )
  self sum / self size
))

list(1,2,3,100) myAverage println
list() myAverage println
list(1,2,"hi") myAverage println
