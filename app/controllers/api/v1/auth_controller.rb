class Api::V1::AuthController < ApplicationController

  def create
    # byebug
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      render json: {user: @user.email, id: @user.id, full_name: "#{@user.first_name} #{@user.last_name}", token: issue_token({user_id: @user.id})}
    else
      render json: {error: 'Invalid User'}, status: 401
    end
  end

  def show
      # byebug
    if logged_in?
      render json: { id: current_user.id, email: current_user.email, gamertag: current_user.gamertag }
    else
      render json: {error: 'No user could be found'}, status: 401
    end
  end

end
