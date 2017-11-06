class RoomsController < ApplicationController
  def login
  end
  
  def new
    @rooms = Rooms.new
  end
  
  def create
    @rooms = Rooms.new(rooms_params)
    
    if @rooms.save
      redirect_to @article
    else
      render 'new'
    end
  end
  
  def show
    @rooms = Rooms.find(params[:id]) #used "id" here but should probably be changed to "roomcode"
  end
  
  def edit
    @rooms = Rooms.find(params[:id])
  end 
  
  def update
    @rooms = Rooms.find(params[:id])
    if @rooms = Rooms.find(params[:id])
      redirect_to @rooms
    else
      render 'edit'
    end
  end
  
  def destroy
    @rooms = Rooms.find(params[:id])
    @rooms.destroy
    
    redirect_to rooms_path #probably needs to be changed later
  end
  
  private 
    def rooms_params
      params.require(:rooms).permit(:roomcode, :password)
    end
  
end
