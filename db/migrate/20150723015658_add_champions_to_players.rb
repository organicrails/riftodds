class AddChampionsToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :c1, :string
    add_column :players, :c2, :string
  end
end
