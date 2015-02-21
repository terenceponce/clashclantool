class Member < ActiveRecord::Base
  belongs_to :clan, class_name: 'OpponentClan', foreign_key: 'opponent_clan_id'
end
