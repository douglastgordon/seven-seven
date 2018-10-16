val scanner = new java.util.Scanner(System.in)

class Board() {
  val xToken = "X"
  val oToken = "O"
  var currentPlayer = oToken
  var winningX = List(xToken, xToken, xToken)
  var winningO = List(oToken, oToken, oToken)
  var grid = List(
    List(" ", " ", " "),
    List(" ", " ", " "),
    List(" ", " ", " "),
  )

  def play() {
    println("Let's play tic-tac-toe!")
    var won = false
    var tied = false
    while(!is_won && !is_tie) {
      switch_player
      print_board
      println("It's " + currentPlayer + "'s turn.")
      val position = scanner.nextLine().split(" ")
      var x = position(0).toInt
      var y = position(1).toInt
      grid = grid.zipWithIndex.map( { case (row, xIdx) =>
        if (xIdx == x) row.zipWithIndex.map { case (e, i) => if (i == y) currentPlayer else e } else row
      })
    }
    if (is_won) println("Congratulations " + currentPlayer + "!") else println("It's a tie!")
  }


  def print_board() {
    grid.foreach {row =>
      println(row)
    }
  }

  def switch_player() {
    if (currentPlayer == xToken) {
      currentPlayer = oToken
    } else {
      currentPlayer = xToken
    }
  }

  def is_won() : Boolean = {
    val row1 = grid(0)
    val row2 = grid(1)
    val row3 = grid(2)
    val col1 = List(grid(0)(0), grid(1)(0), grid(2)(0))
    val col2 = List(grid(0)(1), grid(1)(1), grid(2)(1))
    val col3 = List(grid(0)(2), grid(1)(2), grid(2)(2))
    val diag1 = List(grid(0)(0), grid(1)(1), grid(1)(1))
    val diag2 = List(grid(0)(2), grid(1)(1), grid(2)(0))

    row1 == winningX || row1 == winningO ||
    row2 == winningX || row2 == winningO ||
    row3 == winningX || row3 == winningO ||
    col1 == winningX || col1 == winningO ||
    col2 == winningX || col2 == winningO ||
    col3 == winningX || col3 == winningO ||
    diag1 == winningX || diag1 == winningO ||
    diag2 == winningX || diag2 == winningO
  }

  def is_tie() : Boolean = {
    val row1 = grid(0);
    val row2 = grid(1);
    val row3 = grid(2);
    val col1 = List(grid(0)(0), grid(0)(1), grid(0)(2));
    val col2 = List(grid(1)(0), grid(1)(1), grid(1)(2));
    val col3 = List(grid(2)(0), grid(2)(1), grid(2)(2));
    val diag1 = List(grid(0)(0), grid(1)(1), grid(1)(1));
    val diag2 = List(grid(0)(2), grid(1)(1), grid(2)(0));

    unwinnable(row1) && unwinnable(row2) && unwinnable(row3) &&
    unwinnable(col1) && unwinnable(col2) && unwinnable(col3) &&
    unwinnable(diag1) && unwinnable(diag2)
  }

  def unwinnable(set: List[String]) : Boolean = {
    set.contains(xToken) && set.contains(oToken)
  }
}

val board = new Board()
println(board.play)
