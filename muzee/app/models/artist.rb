class Artist < ActiveRecord::Base
  attr_accessible :highest_price, :lowest_price

  has_one :user, :as => :profile
  has_many :tracks
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :shows
  has_and_belongs_to_many :venues, :through => :shows
  has_and_belongs_to_many :blocked_time_slots

  has_many :artist_ratings #method to get average
  has_many :artist_raters, :through => :artist_rating #can be either fan or venue

  has_many :venue_ratings, :as :venue_rater


end
