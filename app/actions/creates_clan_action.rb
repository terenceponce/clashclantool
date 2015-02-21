class CreatesClanAction
  include LightService::Action
  expects :war, :user

  executed do |context|
    if context.user.clan.present?
      context.war.clan_id = context.user.clan_id
    else
      clan = Clan.create(name: context.war.clan_name)
      context.war.clan_id = clan.id
      context.user.update_attribute(:clan_id, clan.id)
    end
  end
end
