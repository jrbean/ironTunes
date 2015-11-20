class Playlist < ActiveRecord::Base
  validates_uniqueness_of :name

  has_many :playlist_songs
  has_many :songs, through: :playlist_songs
end
