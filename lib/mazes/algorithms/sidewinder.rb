# Uses sidewinder algorithm to create a maze
class Sidewinder
  def self.on(grid)
    grid.each_row do |row|
      run = []

      row.each do |cell|
        run << cell
        at_eastern_bound = cell.east.nil?
        at_north_bound = cell.north.nil?

        should_close_out = at_eastern_bound ||
                           (!at_north_bound && rand(2).zero?)
        
        if should_close_out
          member = run.sample
          member.link(member.north) if member.north
          run.clear
        else
          cell.link(cell.east)
        end
      end
    end

    grid
  end
end
