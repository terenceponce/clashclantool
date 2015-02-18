class CreateWarPositions < ActiveRecord::Migration
  def change
    create_table :war_positions do |t|
      t.integer :war_id
      t.integer :position
      t.integer :member_id

      t.timestamps null: false
    end
  end
end
