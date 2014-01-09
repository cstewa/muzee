class Fan < ActiveRecord::Base
  attr_accessible :area

  has_one :user, :as => :profile
  has_and_belongs_to_many :shows
  has_and_belongs_to_many :genres

  has_many :artist_ratings, :as :artist_rater
  has_many :artists, :through => :artist_rating #rated artists. need to specify type as fan

  has_many :venue_ratings, :as :venue_rater
  has_many :venues, :through => :venue_rating #rated venues. need to specify type as fan

  #make a search method for potential venues. like the venues that have stuff that the fan wants

end
