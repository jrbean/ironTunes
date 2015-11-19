class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :suggest_by_id
      t.string :title
      t.string :artist
      t.string :genre
      t.string :spotify_preview_url

      t.timestamps null: false
    end
  end
end
