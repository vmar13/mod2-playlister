class RemoveNumberOfTracksFromAlbums < ActiveRecord::Migration[6.0]
  def change
    remove_column :albums, :number_of_tracks
  end
end
