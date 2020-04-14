class CreateAddSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :add_songs do |t|
      t.integer :playlist_id
      t.integer :track_id
    end
  end
end
