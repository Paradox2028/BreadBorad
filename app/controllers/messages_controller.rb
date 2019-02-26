class MessagesController < ApplicationController
  def show
    @message = Message.find(params[:id])
  end

  def new
  end

  def create
    @message = Message.new(message_params)

    @message.save
    redirect_to @message
  end

  def index
    @message = Message.all
  end

  private
    def message_params
      params.require(:message).permit(:title, :username, :content)
    end

end
