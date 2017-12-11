class RoomsController < ApplicationController

  def login
  end
  
  def sortNames
    #@room = Room.find(params[:id])
    puts "Hello World"
=begin    
    value = 0
    #counter to determine when algorithm is complete
    
    names = ["nik", "joe", "roa", "dino", "alex", "kent", "tom", "taylor", "erin", "tessa"]
    #this array needs to be populated from the database
    
    until value == names.length
      value = 0
      matchedNames = names.shuffle
      #shuffles names array into new array named matchedNames

      names.zip matchedNames

      names.zip(matchedNames).each do |names, matchedNames|
        print names, " ", matchedNames, "\n"
        if names != matchedNames
            value += 1
            #adds one to value if names at given location don't match between arrays
        end
      end
    end
=end
=begin
    #prints out arrays
    matchedNames.each do |x|
      puts x
    end
=end
  end

  def new
   @room = Room.new
  end
  
  def index
    @rooms = Room.all
  end

  def create
   # @room = Room.new(room_params)
    
   # @room.save
    #  redirect_to @room

    @room = Room.new(room_params)
    
    if @room.save
      redirect_to @room
    else
      render 'new'
    end

  end
 
  def show
    @room = Room.find(params[:id]) #used "id" here but should probably be changed to "roomcode"
  end
  
  def edit
    @room = Room.find(params[:id])
  end 
  
  def update
    @room = Room.find(params[:id])
    if @room.update(room_params)
      redirect_to @room
    else
      render 'edit'
    end
  end
  
  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    
    redirect_to rooms_path #probably needs to be changed later
  end

  private 
    def room_params
      params.require(:room).permit(:roomcode, :roompassword)
    end


end




