class CreateClans < ActiveRecord::Migration
  def change
    create_table :clans do |t|
      t.string :name, default: ''

      t.timestamps null: false
    end
  end
end
