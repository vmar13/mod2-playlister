class RemoveTrackIdAndGenreIdFromPlaylists < ActiveRecord::Migration[6.0]
  def change
    remove_column :playlists, :track_id
    remove_column :playlists, :genre_id
  end
end
