class Playlist < ApplicationRecord
    has_many :add_songs
    has_many :tracks, through: :add_songs

    def username=(name)
        self.user = User.find_or_create_by(name: name)
    end  

    def username
        self.user ? self.user.name : nil 
    end 

    
end
