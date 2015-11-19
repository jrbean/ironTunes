class AddColumnsToSong < ActiveRecord::Migration
  def change
    add_column :songs, :album_name, :string
    add_column :songs, :album_image, :string
  end
end
