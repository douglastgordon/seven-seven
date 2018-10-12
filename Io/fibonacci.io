fibonacciRecursive := method(n, if (n <= 2, 1,fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2)))

recursiveOne := fibonacciRecursive(1) == 1
recursiveTwo := fibonacciRecursive(2) == 1
recursiveThree := fibonacciRecursive(3) == 2
recursiveFour := fibonacciRecursive(4) == 3
recursiveFive := fibonacciRecursive(5) == 5
recursiveSix := fibonacciRecursive(6) == 8

"test recursive fibonacci" println
"fibonacci of 1 is 1 #{recursiveOne}" interpolate println
"fibonacci of 2 is 1 #{recursiveTwo}" interpolate println
"fibonacci of 3 is 2 #{recursiveThree}" interpolate println
"fibonacci of 4 is 3 #{recursiveFour}" interpolate println
"fibonacci of 5 is 5 #{recursiveFive}" interpolate println
"fibonacci of 6 is 8 #{recursiveSix}" interpolate println
"----------------------------------" println

fibonacciIterative := method(n, if(n <= 2, 1,
  fibs := list(1, 1)
  i := 2
  while (i <= n,
    fibs append(((fibs at(i - 1)) + (fibs at(i - 2))));
    i = i + 1
  );
  return fibs at(n - 1)
))

iterativeOne := fibonacciIterative(1) == 1
iterativeTwo := fibonacciIterative(2) == 1
iterativeThree := fibonacciIterative(3) == 2
iterativeFour := fibonacciIterative(4) == 3
iterativeFive := fibonacciIterative(5) == 5
iterativeSix := fibonacciIterative(6) == 8

"test iterative fibonacci" println
"fibonacci of 1 is 1 #{iterativeOne}" interpolate println
"fibonacci of 2 is 1 #{iterativeTwo}" interpolate println
"fibonacci of 3 is 2 #{iterativeThree}" interpolate println
"fibonacci of 4 is 3 #{iterativeFour}" interpolate println
"fibonacci of 5 is 5 #{iterativeFive}" interpolate println
"fibonacci of 6 is 8 #{iterativeSix}" interpolate println
