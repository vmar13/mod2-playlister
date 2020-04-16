class PlaylistsController < ApplicationController
    before_action :find_playlist, only: [:show, :edit, :update, :delete]

    def home
        @playlist = Playlist.new
        render :home
    end

    def index
        @playlists = Playlist.all 
    end 

    def new
        @playlist = Playlist.new 
    end 

    def create
        @playlist = Playlist.create!(playlist_params)
        redirect_to playlist_path(@playlist)
    end 

    def show
        @playlist = Playlist.find(params[:id])
    end 

    def edit
        @playlist = Playlist.find(params[:id])
    end 

    def update
        if playlist.update(playlist_params)
            redirect_to playlist_path(playlist)
        else
            flash[:errors] = playlist.errors.full_messages
            redirect_to edit_playlist_path 
        end 
    end 

    def destroy
        @playlist = Playlist.find(params[:id])
        @playlist.destroy
        redirect_to playlists_path
    end 

    private

    def playlist_params
        params.require(:playlist).permit(:title)
    end 

    def find_playlist
        @playlist = Playlist.find(params[:id])
    end
end
