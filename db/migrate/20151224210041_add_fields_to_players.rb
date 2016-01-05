class AddFieldsToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :rushing_tds, :integer
    add_column :players, :rushing_yards, :integer
    add_column :players, :image_url, :string
    add_column :players, :receiving_tds, :integer
    add_column :players, :receiving_yards, :integer
    add_column :players, :team, :string
    add_column :players, :position, :string
  end
end
