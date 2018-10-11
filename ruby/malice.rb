class Fixnum
  alias_method :old_add, :+
  def +(other)
    self - other
  end
end


p 3 + 4 # -1 lol
