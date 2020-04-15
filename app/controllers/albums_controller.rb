class AlbumsController < ApplicationController

    def index
        @albums = RSpotify::Album.search(params[:album_name])
    end

    def show
        @album = RSpotify::Album.find(params[:id])
    end
    
end
