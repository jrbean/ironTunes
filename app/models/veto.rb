class Veto < ActiveRecord::Base
  validates_presence_of :user_id
  validates_uniqueness_of :user_id

  belongs_to :user
  belongs_to :song

  def veto_available
    #TODO Limit veto availability by time.
    true
  end
end
