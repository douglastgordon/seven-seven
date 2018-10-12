Builder := Object clone
depth := 0
Builder forward := method(
  indentation := emptyString(depth)
  writeln((indentation)..("<"), call message name, ">")
  call message arguments foreach(
    arg,
    depth = depth + 2
    content := self doMessage(arg);
    depth = depth - 2
  if(content type == "Sequence", writeln(indentation, "  ", content))
  )
  # depth println

  writeln((indentation)..("</"), call message name, ">")
)


emptyString := method(length,
  str := ""
  while(length > 0, str = (str)..(" "); length = length - 1)
  return str
)
Builder ul(li(a("Link")), li("Lua"), li("JavaScript"))
