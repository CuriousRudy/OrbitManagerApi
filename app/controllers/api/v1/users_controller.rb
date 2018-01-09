class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new
    if @user.save
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end


  private

  def user_params
    params.permit(:first_name, :last_name, :email)
  end

end
