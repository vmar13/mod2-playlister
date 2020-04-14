class Playlist < ApplicationRecord
    belongs_to :user
    belongs_to :track
    has_one :genre

    def genre_name=(name)
        self.genre = Genre.find_or_create_by(name: name)
    end  

    def genre_name
        self.genre ? self.genre.name : nil 
    end 

    def add_track
    end 
end
