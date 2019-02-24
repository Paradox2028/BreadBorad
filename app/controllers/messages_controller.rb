class MessagesController < ApplicationController
  def new
  end

  def create
    @message = Article.new(message_params)

    @message.save
    redirect_to @article
  end

  private
    def message_params
      params.require(:message).permit(:title, :title, :text)
    end
  
end
