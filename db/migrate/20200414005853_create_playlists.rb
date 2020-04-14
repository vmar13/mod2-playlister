class CreatePlaylists < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists do |t|
      t.string :title
      t.integer :user_id
      t.integer :track_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
