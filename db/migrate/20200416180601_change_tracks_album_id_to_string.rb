class ChangeTracksAlbumIdToString < ActiveRecord::Migration[6.0]
  def up
    change_column :tracks, :album_id, :string
  end

  def down
    change_column :tracks, :album_id, :integer
  end
end
