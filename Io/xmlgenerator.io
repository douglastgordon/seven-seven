Builder := Object clone

depth := 0
Builder forward := method(
  indentation := emptyString(depth)

  # writeln((indentation)..("<"), call message name, ">")
  call message arguments foreach(
    arg,
    arg println;
    depth = depth + 2;
    content := self doMessage(arg);
    depth = depth - 2
    # if(content type == "Sequence", writeln(indentation, "  ", content))
  )
  "---" println

  # writeln((indentation)..("</"), call message name, ">")
)

emptyString := method(length,
  str := ""
  while(length > 0, str = (str)..(" "); length = length - 1)
  return str
)

OperatorTable addAssignOperator(":", "atPutNumber")

curlyBrackets := method(
  r := Map clone
  call message arguments foreach(arg,
    r doMessage(arg)
  )
  r
)

Map atPutNumber := method(
  self atPut(
    call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
    call evalArgAt(1)
  )
)

s := File with("notxml.txt") openForReading contents
Builder doString(s)
