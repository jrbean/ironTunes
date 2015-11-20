class Song < ActiveRecord::Base
  validates_presence_of :title, :suggested_by

  has_many :votes
  has_many :users_who_voted_for, through: :votes, source: :user

  has_many :playlist_songs
  has_many :playlists, through: :playlist_songs

  belongs_to :suggested_by, class_name: "User"
end
