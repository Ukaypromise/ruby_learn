class TreeNode
  attr_accessor :value
  def initialize(value)
    @value = value
    @left = @right = nil
  end

  def insert(node)
    raise "This is not a TreeNode" unless node.is_a? TreeNode

    if(node.value < @value)
      @left.nil? ? @left = node : @left.insert(node)
    elsif(node.value > @value)
      @right.nil? ? @right = node : @right.insert(node)
    end
  end

  def search(value)
    return true if value == @value

    if(value < @value)
      @left.nil? ? false : @left.search(value)
    elsif(value > @value)
      @right.nil? ? false : @right.search(value)
    end
  end

end

tree = TreeNode.new(6)
tree.insert(TreeNode.new(2))
tree.insert(TreeNode.new(4))
tree.insert(TreeNode.new(8))
tree.insert(TreeNode.new(10))
tree.insert(TreeNode.new(7))

puts tree.search(7)
puts tree.search(8)
puts tree.search(11)


p tree
