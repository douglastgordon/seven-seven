import scala.io._
import scala.actors._
import Actor._

object PageLoader {
  def getPageSize(url: String) = Source.fromUrl(url).mkString.length
}

val urls = List("http://amazon.com", "http://google.com", "http://twitter.com", "http://cnn.com")


def timeMethod(method : () => Unit) = {
  val start = System.nanoTime
  method()
  val end = System.nanTime
  println("method took" + (end - start) / 1000000000.0 + "seconds")
}

def getPageSizeSequentially () = {
  for (url <- urls) {
    println("Size for " + url + ": " + PageLoader.getPageSize(url))
  }
}

def getPageSizeConcurrently () = {
  val caller = self
  for (url <- urls) {
    actor { caller ! (url, PageLoader.getPageSize(url))}
  }

  for(i <- 1 to urls.size) {
    receive {
      case(url, size) =>
        println("Size for " + url + ": " + size)
    }
  }
}

println("Sequential Run:")
timeMethod { getPageSizeSequentially }
timeMethod { getPageSizeConcurrently }
