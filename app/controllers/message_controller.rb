class MessageController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy, :send_form]
  
  def send_form
    @reciever_id = params[:id]
  end

  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to '/users/show'
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to '/users/show'
  end

  private
    def message_params
      params.require(:message).permit(:content, :user_id, :reciever_id)
    end
    
end
