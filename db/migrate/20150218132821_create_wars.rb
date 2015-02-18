class CreateWars < ActiveRecord::Migration
  def change
    create_table :wars do |t|
      t.integer :clan_id
      t.integer :opponent_clan_id
      t.integer :war_size_id

      t.timestamps null: false
    end
  end
end
