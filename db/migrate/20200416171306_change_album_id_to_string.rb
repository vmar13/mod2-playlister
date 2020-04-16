class ChangeAlbumIdToString < ActiveRecord::Migration[6.0]
  def up
    change_column :albums, :id, :string
  end

  def down
    change_column :albums, :id, :integer
  end
end
