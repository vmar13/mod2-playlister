class AddSongsController < ApplicationController

    def index
        # !params[:artist_name].empty?
        #   @add_song = RSpotify::Artist.search(params[:artist_name])
        # # else
          # redirect_to add_song_path()
        @add_song = AddSong.new
    end



    # def index
    #     @add_songs = AddSong.all 
    # end 
    
    def new
        @add_song = AddSong.new
        
    end 

    def create
        add_song = AddSong.new
        artist = Artist.find_or_create_by(name: params[:artist_name], bio: "Lorem Ipsum")
        album = Album.find_or_create_by(id: params[:album_id], title: params[:album_name], artist_id: params[:artist_id])
        track = Track.find_or_create_by(id: params[:track_id], name: params[:track_name], album_id: params[:album_id])
        add_song.track_id = params[:track_id]
        add_song.playlist_id = params[:playlist_id]
        add_song.save
        redirect_to playlist_path(params[:playlist_id])
    end 


    def show 
        @add_song = AddSong.find(params[:id])
    end

    private

    def add_song_params
        params.require(:add_song).permit(:playlist_id, :track_id)
    end 
end 