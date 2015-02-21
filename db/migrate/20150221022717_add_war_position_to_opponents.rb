class AddWarPositionToOpponents < ActiveRecord::Migration
  def change
    add_column :opponents, :war_position, :integer
  end
end
