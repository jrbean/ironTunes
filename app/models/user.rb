class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name, :email, :password
  validates_uniqueness_of :email

  has_many :votes
  has_many :vetos
  has_many :songs_vetoed, through: :vetos, source: :song
  has_many :songs_voted_for, through: :votes, source: :songs_voted_for
  has_many :user_songs, class_name: "Song", foreign_key: "suggested_by_id"
end
