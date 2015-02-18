class CreateOpponentClans < ActiveRecord::Migration
  def change
    create_table :opponent_clans do |t|
      t.string :name, default: ''

      t.timestamps null: false
    end
  end
end
