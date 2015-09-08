class Grid
  def initialize
  end

  def has_ship_on?(x,y)
    false
  end


  def display
    puts "    1   2   3   4   5   6   7   8   9   10"
    puts "  -----------------------------------------"
    ("A".."J").each do |l|
      puts l + " |   |   |   |   |   |   |   |   |   |   |"
    end
    puts "  -----------------------------------------"
  end

  def empty_grid
  end

  def place_ship
  end
end
