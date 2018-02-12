#!/usr/bin/env ruby

require "mazes/grid"
require "mazes/algorithms/binary_tree"

grid = Grid.new(4, 4)
BinaryTree.on(grid)
img = grid.to_png
img.save "img/binary_example.png"
