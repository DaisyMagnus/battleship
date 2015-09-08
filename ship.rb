class Ship
  def initialize(length)
    @length = length
    @positions = []
    @hits = []
    end

  def length
    @length
  end

  def place (x, y, across)
    if @positions == []
      length.times do |i|
        if across
          @positions << Position.new(x+i, y)
        else
          @positions << Position.new(x, y+i)
        end
      end
    end
  end

  def covers?(x, y)
    @positions.each do |p|
      return p if p.x == x && p.y == y
    end
    return false
  end

  def overlaps_with?(other_ship)
    @positions.any? {|p| other_ship.covers?(p.x, p.y)}
  end

  def fire_at(x,y)
    if position = covers?(x,y)
      @hits << [x,y]
    else
      false
    end
  end

  def sunk?
    @hits.length == @length
  end

end
