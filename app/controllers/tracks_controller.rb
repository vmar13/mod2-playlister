class TracksController < ApplicationController

    def new
        @track = Track.new 
    end 
        
    def create
        track = Track.create(track_params)
        
    end 
        
    def show
        @track = Track.find(params[:id])
    end 

    def destroy
        @track = Track.find(params[:id])
        @track.destroy
        redirect_to playlist_path()
    end

    private

    def track_params
        params.require(:track).permit(:name, :album_id)
    end 
end
