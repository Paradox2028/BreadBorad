class MessagesController < ApplicationController
  def new
  end

  def create
    render plain: params[:messege].inspect
  end
end
