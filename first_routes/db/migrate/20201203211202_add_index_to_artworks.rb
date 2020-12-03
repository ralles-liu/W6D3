class AddIndexToArtworks < ActiveRecord::Migration[5.2]
  def change
    add_index :artworks, [:title, :artist_id], {unique: true}
    add_index :artworks, :artist_id
  end
end
