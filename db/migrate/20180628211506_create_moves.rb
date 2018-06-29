class CreateMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :moves do |t|
      t.belongs_to :game, index: true
      t.integer :q
      t.integer :r
      t.integer :result
    end
  end
end
