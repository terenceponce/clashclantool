class AddWarPositionToMembers < ActiveRecord::Migration
  def change
    add_column :members, :war_position, :integer
  end
end
