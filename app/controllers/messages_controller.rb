class MessagesController < ApplicationController
  def new
  end

  def create
    @message = Message.new(params[:message])

    @message.save
    redirect_to @message
  end

#  private
#    def message_params
#      params.require(:message).permit(:title, :username, :content)
#    end

end
