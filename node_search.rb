####### QUEUE
require 'pry-byebug'

# Create a queue
# Create a new choice point
# Enqueue the choice point onto the queue
# while (not found and queue is not empty)
# Dequeue the queue
# Find all possible choices after the last one tried
# Enqueue these choices onto the queue
# Return
class Node
  attr_reader :children
  attr_reader :selected

  def initialize(children, selected)
    @children = children
    @selected = selected
  end
end

def find_selected_children(parent_node)
  return parent_node if parent_node.selected == true

  nodes_queue = parent_node.children

  until nodes_queue.empty?
    node = nodes_queue.shift

    if node.selected == true
      return node
    else
      nodes_queue += node.children
    end
  end

  'no selected children'
end

node5 = Node.new([], false)
node4 = Node.new([], true)
node3 = Node.new([], false)
node2 = Node.new([node4, node5], false)
node1 = Node.new([node2, node3], false)

p find_selected_children(node1) == node4
p find_selected_children(node2) == node4
p find_selected_children(node3) == "no selected children"
p find_selected_children(node4) == node4
p find_selected_children(node5) == "no selected children"

def find_recursively()
end

puts '***Recursive***'
# p find_recursively(node1) # == node4

# p find_recursively(node2) # == node4
# p find_recursively(node3, ) == "no selected children"
# p find_recursively(node4) == node4
# p find_recursively(node5) == "no selected children"
# p find_recursively(node6) == node6
