class CreateWarSizes < ActiveRecord::Migration
  def change
    create_table :war_sizes do |t|
      t.string :name, default: ''
      t.integer :size

      t.timestamps null: false
    end
  end
end
