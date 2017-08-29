class User
  attr_accessor :ships

  def initialize(ships = [])
    @ships = ships
  end

  def hit!(coords)
    #s.hit ..... hehehehe
    @ships.map{ |s| s.hit!(coords) }
  end
end
