class OpponentDecorator < Draper::Decorator
  def name
    object.name.blank? ? "Opponent #{object.war_position}" : object.name
  end
end
