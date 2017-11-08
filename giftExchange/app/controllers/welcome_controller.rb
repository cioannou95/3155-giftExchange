class WelcomeController < ApplicationController
  def index
  end

  
  def show
    @user = Welcome.find(user_params)
  end
  
  def new
    @user = Welcome.find(user_params)
  end
  
  def create
    #render plain: params[:welcome].inspect
    @user = Welcome.new(user_params)
    
    @user.save
    redirect_to @user
    
  end
  
private
  def user_params
    params.require(:user).permit(:fname, :lname)
  end
end
