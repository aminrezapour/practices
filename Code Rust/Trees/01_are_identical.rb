# Libraries
require_relative 'binary_tree'

# Classes

# Methods
def are_identical(tree1, tree2)
  include BinaryTree

  if tree1.class == EmptyNode && tree2.class == EmptyNode
    return true
  end

  if tree1.class != EmptyNode && tree2.class != EmptyNode
    return tree1.value == tree2.value &&
           are_identical(tree1.left, tree2.left) &&
           are_identical(tree1.right, tree2.right)

  end

  return false
end

# Test
tree1 = BinaryTree::Node.new(3)
tree1 << 1
tree1 << 2
tree1 << 4
tree1 << 5
tree1 << 6
puts tree1.inspect

tree2 = BinaryTree::EmptyNode.new

puts are_identical(tree1, tree2)

