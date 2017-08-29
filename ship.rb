class Ship
  require 'pry'

  attr_accessor :hit_counter, :max_hits, :sunk, :points

  def initialize(points=[])
    @points = points
    @hit_counter = 0
    @max_hits = points.length
    @sunk = false
  end

  def hit!(target_point)
    @points.each do |point|
      if point.join(',') == target_point.join(',')
        update_hits
      end
    end
  end

  def update_hits
    @hit_counter+=1
    if @hit_counter == @max_hits
      @sunk = true
      puts "YOU SUNK ME"
      return
    end
  end
end
