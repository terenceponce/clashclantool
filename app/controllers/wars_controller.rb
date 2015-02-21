class WarsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]
  before_filter :reject_unfriendly_id, only: [:show]

  def new
    @war = War.new
    @war_size = WarSize.all
  end

  def create
    @war = War.new(war_params)

    if @war.valid?
      OrganizesWar.for_war(@war, current_user)
      redirect_to war_url(@war)
    else
      render action: :new
    end
  end

  def show
    begin
      @war = War.friendly.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      not_found
    end
  end

  private
    def war_params
      params.require(:war).permit(:clan_id, :clan_name, :opponent_clan_name, :war_size_id)
    end

    def reject_unfriendly_id
      if params[:id].to_i > 0
        not_found
      end
    end
end
