class CreatesClanAction
  include LightService::Action
  expects :war, :user

  executed do |context|
    if context.user.clan.present?
      next context
    else
      clan = Clan.create(name: context.war.clan_name)
      context.war.clan_id = clan.id
    end
  end
end
