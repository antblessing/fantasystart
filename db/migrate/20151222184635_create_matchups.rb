class CreateMatchups < ActiveRecord::Migration
  def change
    create_table :matchups do |t|
      t.boolean :result

      t.timestamps null: false
    end
  end
end
