require 'test_helper'
require 'pp'
class GameTest < ActiveSupport::TestCase

  def setup
    @u = 4.times.map { User.create }
    @g = Game.create
  end

  test 'create a game' do
    assert false unless Game.create
  end

  test 'add a user to a game' do
    assert false unless @g.join_table(@u[0], 0)
  end

  test 'add players board to game' do
    assert false unless @g.join_table(@u[0], 0)
    assert false unless @g.update_player_board(@u[0], '')
  end

  test 'start a game' do
    assert false unless @g.join_table(@u[0], 0)
    assert false unless @g.join_table(@u[1], 1)
    assert false unless @g.join_table(@u[2], 2)
    assert false unless @g.join_table(@u[3], 3)
    assert false unless @g.player_ready(@u[0])
    assert false unless @g.player_ready(@u[1])
    assert false unless @g.player_ready(@u[2])
    assert false unless @g.player_ready(@u[3])
    assert false unless @g.status.eql?(:running.to_s)
  end

end
