# The idea behind board is simple.  We don't need active record, but we do need
# a few methods to store and load our boards
class Board
  attr_reader :board_map
  attr_reader :ships

  def initialize(s=nil)
    @board_map = Board.generateBlank
    if s.nil? then
      @ships = []
    else
      self.load(s)
    end
  end

  def load(s)
    @ships = Marshal.load(ActiveSupport::Gzip.decompress(s))
  end

  def save
    return ActiveSupport::Gzip.compress(Marshal.dump(@ships))
  end

  def addShip(ship)
    @ships.push(ship)
  end

  def getTile(q, r)
    raise "location [#{l.q}, #{l.r}] is out of bounds" if q < BOARD_MIN || q > BOARD_MAX || r < BOARD_MIN || r > BOARD_MAX
    return @board_map[q][r]
  end

  def Board.generateBlank
    board = {}
    (BOARD_MIN..BOARD_MAX).each {|q| board[q] = {}; (BOARD_MIN..BOARD_MAX).each {|r| board[q][r]=Tile.new(q,r) }}
    return board
  end

  def alive?
    health = 0
    @ships.each do |s|
      health += s.length
    end

    @board_map.keys.each do |q|
      @board_map[q].keys.each do |r|
        health -= 1 if @board_map[q][r].status == :hit
      end
    end
    health > 0 ? health : false
  end

end
