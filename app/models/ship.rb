class Ship
  @@length = { purple: 5, blue: 4, green: 3, orange: 2 }
  attr_accessor :type # [ :purple, :blue, :green, :orange ]
  attr_accessor :length
  attr_accessor :name # [ Oregon trail customizeable ]
  attr_accessor :locations # [ Tile, Tile, Tile, Tile ]


  def initialize(name, type, locations)
    @type = type
    @length = @@length[type]
    @name = name
    if locations.empty? then
      @locations = locations
    elsif locations.count == @length then
      locations.each {|l| raise "location [#{l.q}, #{l.r}] is out of bounds" if l.q < BOARD_MIN || l.q > BOARD_MAX || l.r < BOARD_MIN || l.r > BOARD_MAX; l.ship=self; l.status = :occupied }
      @locations = locations
    else
      raise "locations count doesn't match ship length. Can't initialize"
    end
  end

  def alive?
    hp = @length
    @locations.each do |loc|
      hp -= 1 if loc.status == :hit
    end
    hp > 0 ? true : false
  end
end
