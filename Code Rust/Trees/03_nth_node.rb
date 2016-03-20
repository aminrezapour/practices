# Libraries
require_relative 'binary_tree'

# Classes

# Constants
$count = 0

# Methods
def nth_node(tree, n)
  include BinaryTree

  return tree if tree.class == EmptyNode

  # right
  right_node = nth_node(tree.right, n)
  return right_node unless right_node.class == EmptyNode
  # visit
  $count += 1
  return tree if $count == n
  # left
  left_node = nth_node(tree.left, n)
  return left_node unless left_node.class == EmptyNode

  return EmptyNode.new

end

# Test
tree1 = BinaryTree::Node.new(3)
tree1 << 1
tree1 << 2
tree1 << 4
tree1 << 5
tree1 << 6
puts tree1.inspect

p nth_node(tree1, 2)
