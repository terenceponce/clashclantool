class WarPosition < ActiveRecord::Base
  belongs_to :war
  belongs_to :member
end
