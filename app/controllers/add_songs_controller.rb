class AddSongsController < ApplicationController

    def index
        @playlist_id = params[:playlist_id]
        @add_song = AddSong.new
    end

    def new
        @add_song = AddSong.new
        
    end 

    def create
        add_song = AddSong.new
        artist = Artist.find_or_create_by(id: params[:add_song][:artist_id], name: params[:add_song][:artist_name], bio: "Lorem Ipsum")
        album = Album.find_or_create_by(id: params[:add_song][:album_id], title: params[:add_song][:album_name], artist_id: params[:add_song][:artist_id])
        track = Track.find_or_create_by(id: params[:add_song][:track_id], name: params[:add_song][:track_name], album_id: params[:add_song][:album_id])
        add_song.track_id = params[:add_song][:track_id]
        add_song.playlist_id = params[:add_song][:playlist_id]
        
        add_song.save
        redirect_to playlist_path(params[:add_song][:playlist_id])
    end 


    def show 
        @add_song = AddSong.find(params[:id])
    end

    def destroy
        @add_song = AddSong.find(params[:id])
        playlist = @add_song.playlist_id
        @add_song.destroy
        redirect_to playlist_path(playlist)
    end
    

    private

    def add_song_params
        params.require(:add_song).permit(:playlist_id, :track_id)
    end 

end 