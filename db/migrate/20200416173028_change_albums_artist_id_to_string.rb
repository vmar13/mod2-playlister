class ChangeAlbumsArtistIdToString < ActiveRecord::Migration[6.0]
  def up
    change_column :albums, :artist_id, :string
  end

  def down
    change_column :albums, :artist_id, :integer
  end
end
