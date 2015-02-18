class War < ActiveRecord::Base
  belongs_to :clan
  belongs_to :opponent_clan
  belongs_to :war_size

  attr_accessor :clan_name, :opponent_clan_name
end
