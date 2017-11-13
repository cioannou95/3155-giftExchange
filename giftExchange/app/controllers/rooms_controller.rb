class RoomsController < ApplicationController

  def login
  end
  
  def new
   # @room = Room.new
  end
  
  def index
    @room = Room.all
  end

  def create
    render plain: params[:article].inspect
=begin
    @room = Room.new(room_params)
    
    if @room.save
      redirect_to @room
    else
      render 'new'
    end
=end
  end
 
  def show
    @room = Room.find(params[:id]) #used "id" here but should probably be changed to "roomcode"
  end
  
  def edit
    @room = Room.find(params[:id])
  end 
  
  def update
    @room = Room.find(params[:id])
    if @room = Room.update(room_params)
      redirect_to @room
    else
      render 'edit'
    end
  end
  
  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    
    redirect_to room_path #probably needs to be changed later
  end
=begin 
  private 
    def room_params
      params.require(:room).permit(:roomcode, :password)
    end
=end 
end




