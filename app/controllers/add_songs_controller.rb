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
        add_song = AddSong.create(add_song_params)
        redirect_to add_song_path(add_song)
    end 


    def show 
        @add_song = AddSong.find(params[:id])
        
    end
  

    # def search
    #     q = params[:q]
    #     return unless q.present?

    #     require 'net/http'
    #     uri = URI.parse("https://api.spotify.com/v1/search?" + { q: q, type: 'track' }.to_query)
    #     json = Net::HTTP.get(uri)

    #     @results = JSON.parse(json)["tracks"]["items"]
    # end 

    private

    def add_song_params
        params.require(:add_song).permit(:playlist_id, :track_id)
    end 
end 