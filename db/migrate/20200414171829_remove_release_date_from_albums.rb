class RemoveReleaseDateFromAlbums < ActiveRecord::Migration[6.0]
  def change
    remove_column :albums, :release_date
  end
end
