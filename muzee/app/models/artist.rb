class Artist < ActiveRecord::Base
  attr_accessible :highest_price, :lowest_price

  has_one :user, :as => :profile
  has_many :tracks

  has_many :genres, through: :artist_genres
  has_many :artist_genres

  has_many :shows
  has_many :venues, :through => :shows

  has_many :blocked_time_slots, through: :artist_blocked_time_slots
  has_many :artist_blocked_time_slots

  has_many :artist_ratings #method to get average
  has_many :artist_raters, :through => :artist_ratings #can be either fan or venue

  has_many :venue_ratings, as: :venue_rater

  def getUser
    User.where(:profile_id => self.id).first
  end

  def self.playing_today
    artist_user_array = []
    Show.shows_today.each do |s|
      artist_user_array << s.artist.getUser
    end
    artist_user_array
  end

end
