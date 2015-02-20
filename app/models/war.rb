class War < ActiveRecord::Base
  extend FriendlyId

  belongs_to :clan
  belongs_to :opponent_clan
  belongs_to :war_size

  friendly_id :code

  attr_accessor :clan_name, :opponent_clan_name

  before_create :generate_code

  private

    def generate_code
      self.code = SecureRandom.hex(3)
    end
end
