# A cell in a maze
class Cell
  attr_reader :row, :column
  attr_accessor :north, :south, :east, :west

  def initialize(row, column)
    @row, @column = row, column
    @links = {}
  end

  def link(other_cell, bidirectional = true)
    @links[other_cell] = true
    other_cell.link(self, false) if bidirectional
    self
  end

  def unlink(other_cell, bidirectional = true)
    @links.delete(other_cell)
    other_cell.unlink(self, false) if bidirectional
    self
  end

  def links
    @links.keys
  end

  def linked?(other_cell)
    @links.key?(other_cell)
  end

  def neighbors
    [@north, @south, @east, @west].reject(&:nil?)
  end
end
