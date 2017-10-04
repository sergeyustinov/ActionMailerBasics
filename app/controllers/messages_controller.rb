class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new message_params

    if @message.send_message
      #message sent 
    else
      #some errors
      render action: 'new'
    end
  end

  def index
    redirect_to action: 'new'
  end

  private

  def message_params
    params[:message].permit(:subject, :email, :message)
  end
end
