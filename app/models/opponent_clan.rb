class OpponentClan < ActiveRecord::Base
  has_many :members, class_name: 'Opponent'
  has_many :wars
end
