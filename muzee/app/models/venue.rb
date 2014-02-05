class Venue < ActiveRecord::Base
  attr_accessible :about, :address, :highest_price, :lowest_price, :name

  has_one :user, :as => :profile

  has_many :shows
  has_many :artists, :through => :shows #artists who have played/are playing

  has_many :blocked_time_slots, through: :venue_blocked_time_slots
  has_many :venue_blocked_time_slots

  has_many :venue_ratings #method to get average
  has_many :venue_raters, :through => :venue_ratings #can be either fan or artist

  has_many :artist_ratings, as: :artist_rater

  def getUser
    User.where(:profile_id => self.id, :profile_type => "--- !ruby/class 'Venue'\n").first
  end

end
