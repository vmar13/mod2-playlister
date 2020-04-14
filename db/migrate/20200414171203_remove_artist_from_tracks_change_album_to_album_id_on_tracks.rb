class RemoveArtistFromTracksChangeAlbumToAlbumIdOnTracks < ActiveRecord::Migration[6.0]
  def change
    remove_column :tracks, :artist
    remove_column :tracks, :album
  end
end
