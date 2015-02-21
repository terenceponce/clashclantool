class OpponentClan < ActiveRecord::Base
  has_many :members, class_name: 'Opponent'
end
