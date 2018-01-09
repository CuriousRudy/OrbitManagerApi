class Api::V1::MembershipsController < ApplicationController
  def index
    @memberships = Membership.all
    render json: @memberships
  end

  def create
    @Membership = Membership.new(membership_params)
    if @membership.create
      render json: @membership
    else
      render json: @membership.errors, status: :unprocessable_entity
    end
  end


  private

  def membership_params
    params.require(:membership).permit(:user_id, :clan_id)
  end
end
