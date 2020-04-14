class AddSongsController < ApplicationController

    def new
        @add_song = AddSong.new 
    end 

    def create
        add_song = AddSong.create(add_song_params)
        redirect_to new_add_song_path
    end 

    private

    def add_song_params
        params.require(:add_song).permit(:playlist_id, :track_id)
    end 
end 