#!/usr/bin/env ruby

require_relative "../lib/mazes/grid"
require_relative "../lib/mazes/algorithms/sidewinder"

grid = Grid.new(4, 4)
Sidewinder.on(grid)
img = grid.to_png
img.save "img/sidewinder_example.png"
