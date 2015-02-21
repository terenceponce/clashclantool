class OrganizesWar
  include LightService::Organizer

  def self.for_war(war, user)
    with(war: war, user: user).reduce(
      CreatesClanAction,
      CreatesOpponentClanAction,
      CreatesWarCompositionAction
    )
  end
end
