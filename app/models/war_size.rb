class WarSize < ActiveRecord::Base
  validates :name, uniqueness: true
end
