# Libraries
require_relative 'binary_tree'

# Classes

# Constants

# Methods
def inorder_tree_iterator(tree)
  include BinaryTree

  return tree if tree.class == EmptyNode
  my_stack = []

  while (my_stack.length > 0) || (tree.class != EmptyNode)
    unless tree.class == EmptyNode
      my_stack << tree
      tree = tree.left
      next
    end
    puts "#{my_stack[-1].value} "
    tree = my_stack.pop.right
  end

end

# Test
tree1 = BinaryTree::Node.new(3)
tree1 << 1
tree1 << 2
tree1 << 4
tree1 << 5
tree1 << 6
puts tree1.inspect

inorder_tree_iterator(tree1)