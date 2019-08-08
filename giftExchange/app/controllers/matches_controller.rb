class MatchesController < ApplicationController
    def create
        @room = Room.find(params[:room_id])
        @match = @room.matches.create(match_params)
        redirect_to room_path(@room)
    end
    
    def destroy
        @room = Room.find(params[:room_id])
        @match = @room.matches.find(params[:id])
        @match.destroy
        redirect_to room_path(@room)
    end
    
    def sortNames
        @room = Room.find(params[:room_id])
        
        value = @room.id
        
        #@matches = Match.group(:room_id)
        @matches = Match.where(room_id: value)
        
        value = 0
        #counter to determine when algorithm is complete
    
        #@names = ["nik", "joe", "roa", "dino", "alex", "kent", "tom", "taylor", "erin", "tessa"]
        #this array needs to be populated from the database
    
        until value == @matches.length
            value = 0
            @matchedNames = @matches.shuffle
            #shuffles names array into new array named matchedNames

            @matches.zip @matchedNames

            @matches.zip(@matchedNames).each do |matches, matchedNames|
            #print names, " ", matchedNames, "\n"
            
                if matches != matchedNames
                    value += 1
                    #adds one to value if names at given location don't match between arrays
                end
            end
        end
    
  end
    
    private
    def match_params
        params.require(:match).permit(:name)
    end
end
