class WarsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]

  def new
    @war = War.new
    @war_size = WarSize.all
  end

  def create
    @war = War.new(params[:war])

    if @war.save
      redirect_to war_url(@war)
    else
      render action: :new
    end
  end

  def show
    @war = War.find(params[:id])
  end
end
