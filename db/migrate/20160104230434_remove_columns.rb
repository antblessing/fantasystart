class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :players, :rushing_tds, :integer
    remove_column :players, :rushing_yards, :integer
    remove_column :players, :receiving_tds, :integer
    remove_column :players, :receiving_yards, :integer
  end
end
