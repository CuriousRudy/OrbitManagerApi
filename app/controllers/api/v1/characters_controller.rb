class Api::V1::CharactersController < ApplicationController

  def index
    @characters = Character.all
    render json: @characters
  end

  def create
    # byebug
    @character = Character.new(character_params)
    @character.user = current_user
    if @character.save
      render json: @character
    else
      render json: @character.errors
    end
  end

  private

  def character_params
    params.permit(:light, :level, :player_class, :gender, :race, :player_emblem)
  end
end
