class Game < ApplicationRecord
  #has_many :players
  has_many :moves, dependent: :destroy
  has_many :players, dependent: :destroy
  enum status: [ :created, :running, :finished, :crashed ]

  after_create :default_values

  def join_table(user, seat_number)
    test_user = self.players.find_by seat_number: seat_number
    test_user.user.nil? ? (test_user.update(user: user); self.reload; true) : false
  end

  def leave_table(user, seat_number)
    test_user = self.players.find_by seat_number: seat_number
    test_user.user == user ? (test_user.update(user: nil); self.reload; true) : false
  end

  def get_player_board(user)
    test_user = self.players.find_by user: user
    return test_user.submitted_board
  end

  def update_player_board(user, board)
    test_user = self.players.find_by user: user
    (test_user.user.eql?(user) && self.status.eql?(:created.to_s)) ? (test_user.update(submitted_board: Marshal.dump(board).unpack('h*')); self.reload; true) : false
  end

  def player_ready(user)
    test_user = self.players.find_by(user: user)
      if (!test_user.nil? && self.status.eql?(:created.to_s)) then
      test_user.update(ready: true)
      self.reload
      if everyone_ready?
        self.update(status: :running)
        self.reload
      end
      return true
    else
      return false
    end
  end

  def everyone_ready?
    players_ready = []
    self.players.each { |p| players_ready.push p.ready }
    return([true, true, true, true] == players_ready)
  end

  def default_values
    4.times { |x| self.players.create(user: nil, seat_number: x) }
    self.update(status: :created)
  end

end
