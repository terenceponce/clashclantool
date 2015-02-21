class CreatesWarCompositionAction
  include LightService::Action
  expects :war

  executed do |context|
    context.war.save

    Member.transaction do
      context.war.size.size.times.each do |position|
        context.war.opponent_clan.members.create(war_position: position)
      end
    end
  end
end
