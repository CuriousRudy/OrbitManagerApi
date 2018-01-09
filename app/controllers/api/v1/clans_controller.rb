class Api::V1::ClansController < ApplicationController

  def index
    @clans = Clan.all
    render json: @clans
  end

  def create
    @clan = Clan.new(clan_params)
    if @clan.save
      render json: @clan
    else
      render json: @clan.errors, status: :unprocessable_entity
    end
  end

  private

  def clan_params
    params.require(:clan).permit(:name, :tagline)
  end
end
