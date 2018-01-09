class Api::V1::ForumsController < ApplicationController

  def index
    @forums = Forum.all
    render json: @forums
  end

  def create
    @forum = Forum.new(forum_params)
    if @forum.save
      render json: @forum
    else
      render json: @forum.errors, status: :unprocessable_entity
    end
  end

  private

  def forum_params
    params.require(:forum).permit(:title)
  end
end
