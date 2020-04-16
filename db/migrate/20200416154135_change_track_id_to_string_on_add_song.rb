class ChangeTrackIdToStringOnAddSong < ActiveRecord::Migration[6.0]
  def up
    change_column :add_songs, :track_id, :string
  end

  def down
    change_column :add_songs, :track_id, :integer
  end
end
