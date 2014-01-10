class Fan < ActiveRecord::Base
  attr_accessible :area

  has_one :user, :as => :profile

  has_many :shows, through: :fan_shows
  has_many :fan_shows

  has_many :genres, through: :fan_genres
  has_many :fan_genres

  has_many :artist_ratings, as: :artist_rater
  has_many :artists, :through => :artist_ratings #rated artists. need to specify type as fan

  has_many :venue_ratings, as: :venue_rater
  has_many :venues, :through => :venue_ratings #rated venues. need to specify type as fan

  #make a search method for potential venues. like the venues that have stuff that the fan wants

end
