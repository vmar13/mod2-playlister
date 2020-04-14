class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :number_of_tracks
      t.date :release_date
      t.timestamps
    end
  end
end
