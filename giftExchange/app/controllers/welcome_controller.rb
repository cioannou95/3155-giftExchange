class WelcomeController < ApplicationController
  def index
  end
  
  def show
    @welcome = Welcome.find(params[:id])
  end
  
  def new
  end
  
  def create
    #render plain: params[:welcome].inspect
    @welcome = Welcome.new(params[:welcome])
    
    @welcome.save
    redirect_to @welcome
  end
end
