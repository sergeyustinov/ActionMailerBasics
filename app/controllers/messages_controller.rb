class MessagesController < ApplicationController
  def new
  end

  def create
  end

  def index
    redirect_to :new
  end
end
