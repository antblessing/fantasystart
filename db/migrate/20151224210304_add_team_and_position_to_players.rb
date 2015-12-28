class AddTeamAndPositionToPlayers < ActiveRecord::Migration
  def change
    add_reference :players, :team, index: true, foreign_key: true
    add_reference :players, :position, index: true, foreign_key: true
  end
end
