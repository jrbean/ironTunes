class AddColumnsToPlaylist < ActiveRecord::Migration
  def change
    add_column :playlists, :name, :string
    add_column :playlists, :spotify_playlist_id, :string
  end
end
