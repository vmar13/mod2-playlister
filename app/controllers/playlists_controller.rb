class PlaylistsController < ApplicationController
    before_action :find_playlist, only: [:show, :edit, :update, :delete]

    def index
        @playlists = Playlist.all 
    end 

    def new
        @playlist = Playlist.new 
    end 

    def create
        playlist = Playlist.create(playlist_params)
        if playlist.valid?
            redirect_to playlist_path(playlist)
        else
            flash[:errors] = playlist.errors.full_messages
            redirect_to new_playlist_path
        end 
    end 

    def show
    end 

    def edit
    end 

    def update
        if playlist.update(playlist_params)
            redirect_to playlist_path(playlist)
        else
            flash[:errors] = playlist.errors.full_messages
            redirect_to edit_playlist_path 
        end 
    end 

    def delete
        playlist.destroy
        redirect_to playlists_path
    end 

    private

    def playlist_params
        params.require(:playlist).permit(:title, :username)
    end 

    def find_playlist
        @playlist = Playlist.find(params[:id])
    end
end
