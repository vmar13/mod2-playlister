class Track < ApplicationRecord
    has_many :add_songs
    has_many :playlists, through: :add_songs
    belongs_to :album
end
