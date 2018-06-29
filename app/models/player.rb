class Player < ApplicationRecord
  belongs_to :game, touch: true
  has_one :user
  after_create :default_values

  def default_values
    self.update(ready: false)
    self.update(submitted_board: '')
  end
end
