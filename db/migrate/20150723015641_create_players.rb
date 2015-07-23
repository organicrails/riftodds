class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :p1
      t.string :p2

      t.timestamps null: false
    end
  end
end
