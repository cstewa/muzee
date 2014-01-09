class Track < ActiveRecord::Base
  attr_accessible :url, :artist_id

  belongs_to :artist
  #get the soundcloud urls
end
