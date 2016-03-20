# Libraries
require_relative 'binary_tree'

# Classes

# Constants
$count = 0

# Methods
def inorder_successor(tree, n) # tree must have a node with value n
  include BinaryTree

  return tree if tree.class == EmptyNode

  successor = EmptyNode.new

  while (tree.class != EmptyNode)
    case tree.value <=> n
    when -1 then tree = tree.right
    when 1
      successor = tree
      tree = tree.left
    else
      successor = find_min(tree.right) if tree.right.class != EmptyNode
      break
    end
  end

  return successor
end

def find_min(tree)
  return tree if tree.class == BinaryTree::EmptyNode || tree.left.class == BinaryTree::EmptyNode

  while (tree.left.class != BinaryTree::EmptyNode)
    tree = tree.left
  end

  return tree
end

# Test
tree1 = BinaryTree::Node.new(3)
tree1 << 1
tree1 << 2
tree1 << 5
tree1 << 6
puts tree1.inspect

puts inorder_successor(tree1, 2).value