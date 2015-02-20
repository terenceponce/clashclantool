class AddCodeToWars < ActiveRecord::Migration
  def change
    add_column :wars, :code, :string, default: ''
    add_index :wars, :code, unique: true
  end
end
