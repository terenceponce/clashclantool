class CreateOpponents < ActiveRecord::Migration
  def change
    create_table :opponents do |t|
      t.string :name, default: ''
      t.integer :opponent_clan_id

      t.timestamps null: false
    end
  end
end
