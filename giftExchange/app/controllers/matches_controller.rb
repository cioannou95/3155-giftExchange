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
    
    private
    def match_params
        params.require(:match).permit(:name)
    end
end
