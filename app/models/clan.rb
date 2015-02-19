class Clan < ActiveRecord::Base
  has_many :members, class_name: 'User'
end
