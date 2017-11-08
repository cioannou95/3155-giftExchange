class WelcomeController < ApplicationController
  def index
  end
  
  def show
  end
  
  def new
  end
  
  def create
    render plain: params[:welcome].inspect
  end
end
