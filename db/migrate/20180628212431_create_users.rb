class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.belongs_to :player, index: true
      t.string :name
      t.string :email
      t.string :password
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
