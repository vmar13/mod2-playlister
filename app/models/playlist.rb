class Playlist < ApplicationRecord
    belongs_to :user
    has_many :add_songs
    has_many :tracks, through: :add_songs

    # def genre_name=(name)
    #     self.genre = Genre.find_or_create_by(name: name)
    # end  

    # def genre_name
    #     self.genre ? self.genre.name : nil 
    # end 

    def add_track
    end 
end
