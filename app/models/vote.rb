class Vote < ActiveRecord::Base
  validates_presence_of :user_id, :song_id

  belongs_to :user
  belongs_to :song
end
