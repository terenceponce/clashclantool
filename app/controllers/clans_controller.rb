class ClansController < ApplicationController
  before_filter :authenticate_user!, except: [:index]

  def new
    @clan = Clan.new
  end

  def create
    @clan = Clan.new(params[:clan])
    if @clan.save
      redirect_to clan_path(@clan)
    else
      render action: :new
    end
  end

  def show
    @clan = Clan.find(params[:id])
  end
end
