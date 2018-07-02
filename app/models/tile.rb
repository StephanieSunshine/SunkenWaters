class Tile
  attr_accessor :status
  attr_reader :q
  attr_reader :r
  attr_accessor :ship

  def initialize(q, r)
    @status = :empty
    @ship = nil
    @q = q
    @r = r
  end

end
