class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.belongs_to :game, foreign_key: true
      t.integer :seat_number
      t.text :submitted_board
      t.boolean :ready
    end
  end
end
