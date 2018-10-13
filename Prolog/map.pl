different(red, green). different(red, blue).
different(green, red). different(green, blue).
different(blue, red). different(blue, green).

coloring(Alabama, Mississippi, Georgia, Tennessee, Florida) :-
  different(Mississippi, Tennessee),
  different(Mississippi, Alabama),
  different(Alabama, Tennessee),
  different(Alabama, Mississippi),
  different(Alabama, Georgia),
  different(Alabama, Florida),
  different(Georgia, Florida),
  different(Georgia, Tennessee),
  different(Tennessee, Mississippi),
  different(Tennessee, Alabama),
  different(Tennessee, Georgia),
  different(Florida, Georgia),
  different(Florida, Alabama),
  different(Georgia, Alabama).
