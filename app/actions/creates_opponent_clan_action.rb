class CreatesOpponentClanAction
  include LightService::Action
  expects :war

  executed do |context|
    opponent_clan = OpponentClan.create(name: context.war.opponent_clan_name)
    context.war.opponent_clan_id = opponent_clan.id
  end
end
