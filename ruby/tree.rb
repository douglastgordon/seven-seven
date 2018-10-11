class Tree
  attr_accessor :value, :children
  def initialize(tree)
    @value = tree.keys.first
    @children = tree.values.map{|child| Tree.new(child)}
  end
end

family = {"grandpa" => {
    "dad" => {
      "child1" => {},
      "child2" => {},
    },
    "uncle" => {
      "child3" => {},
      "child4" => {},
    }
  }}

family_tree = Tree.new(family)
