class AddAlbumIdToTracks < ActiveRecord::Migration[6.0]
  def change
    add_column :tracks, :album_id, :integer
  end
end
