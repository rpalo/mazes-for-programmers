#!/usr/bin/env ruby

require "mazes"

grid = Grid.new(4, 4)
Sidewinder.on(grid)
img = grid.to_png
img.save "img/sidewinder_example.png"
