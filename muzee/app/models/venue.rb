class Venue < ActiveRecord::Base
  attr_accessible :about, :address, :highest_price, :lowest_price

  has_one :user, :as => :profile
  has_many :ratings, :as => :artist_rater
  has_many :shows
  has_many :artists, :through => :shows #artists who have played/are playing
  has_many :blocked_time_slots

  has_many :venue_ratings #method to get average
  has_many :venue_raters, :through => :venue_rating #can be either fan or artist

  has_many :artist_ratings, :as :artist_rater


end
