class ChangeIdToStringOnTracks < ActiveRecord::Migration[6.0]
  def up
    change_column :tracks, :id, :string
  end

  def down
    change_column :tracks, :id, :integer
  end
end
