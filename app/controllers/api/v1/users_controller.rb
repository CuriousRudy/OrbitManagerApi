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
    byebug
    @user = User.new(user_params)
    @user.password = (params[:password])
    if @user.save
      token = issue_token(user: @user.id)
      # byebug
      render json: {user: @user.gamertag, id: @user.id, platform: @user.platform, membershipId: (@user.membershipId).to_s, token: token}
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end


  private

  def user_params
    params.require(:user).permit([:first_name, :last_name, :email, :password, :gamertag, :membershipId, :platform])
  end

end
