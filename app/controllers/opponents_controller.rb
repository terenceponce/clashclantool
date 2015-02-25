class OpponentsController < ApplicationController
  def show
    @war = War.friendly.find(params[:war_id])
    @opponent = @war.opponent_clan.members.where(id: params[:id]).first
    not_found if @opponent.nil?
  end

  def edit
    @war = War.friendly.find(params[:war_id])
    @opponent = @war.opponent_clan.members.where(id: params[:id]).first
    not_found if @opponent.nil?
  end

  def update
    @opponent = Opponent.find(params[:id])
    @war = War.friendly.find(params[:war_id])

    if @opponent.update_attributes(opponent_params)
      flash[:success] = 'Successfully updated opponent information!'
      redirect_to war_opponent_url(@war, @opponent)
    else
      render action: :edit
    end
  end

  private
    def opponent_params
      params.require(:opponent).permit(:name)
    end
end
