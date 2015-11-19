class CreatePlaylistSongs < ActiveRecord::Migration
  def change
    create_table :playlist_songs do |t|

      t.timestamps null: false
    end
  end
end
