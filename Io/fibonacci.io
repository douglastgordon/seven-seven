fibonacci := method(n, if (n <= 2), n, n + fibonacci(n - 1))

fibonacci(10) println
