class Genre < ActiveRecord::Base
  attr_accessible :kind

  has_many :artists, through: :artist_genres
  has_many :artist_genres

  has_many :fans, through: :fan_genres
  has_many :fan_genres
end
