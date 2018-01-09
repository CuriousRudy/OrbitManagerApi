class Api::V1::MessagesController < ApplicationController

  def index
    @messages = Message.all
    render json: @messages
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      render json: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  def destroy
   @message = Message.find(params[:id])
     if @message
       @message.destroy
     end
  end


  private

  def message_params
    params.require(:message).permit(:user_id, :forum_id, :content)
  end
end
