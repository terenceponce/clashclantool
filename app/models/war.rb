class War < ActiveRecord::Base
  extend FriendlyId

  belongs_to :clan
  belongs_to :opponent_clan
  belongs_to :size, class_name: 'WarSize', foreign_key: 'war_size_id'

  friendly_id :code

  attr_accessor :clan_name, :opponent_clan_name

  before_create :generate_code

  validates :clan_name, presence: true, unless: 'clan_id.present?'
  validates :opponent_clan_name, presence: true
  validates :war_size_id, presence: true

  private

    def generate_code
      self.code = alphanumeric_code
    end

    def alphanumeric_code
      code = SecureRandom.hex(3)
      if code.to_i > 0
        alphanumeric_code
      else
        code
      end
    end
end
