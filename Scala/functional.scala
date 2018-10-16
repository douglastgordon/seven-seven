val words = List("These", "are", "some", "words")

// println(words.foldLeft(0)((sum, word) => sum + word.length))

trait Censor {
  val curses = Map("damn" -> "darn", "god" -> "gosh", "shit" -> "sugar")
  def replace(words: String) : String = {
    words.split(" ").map(word => if (curses.contains(word)) curses(word) else word ).mkString(" ")
  }
}

class Phrase(val content:String)

class CensoredString(override val content:String) extends Phrase(content) with Censor {
  val censorsedContent = replace(content)
}

val mySentence = new CensoredString("What the god damn shit are you doing here?")

println(mySentence.content)
println(mySentence.censorsedContent)
