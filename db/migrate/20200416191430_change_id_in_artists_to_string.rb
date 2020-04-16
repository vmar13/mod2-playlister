class ChangeIdInArtistsToString < ActiveRecord::Migration[6.0]
  def up
    change_column :artists, :id, :string
  end

  def down
    change_column :artist, :id, :integer
  end
end
