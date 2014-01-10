class FanGenre < ActiveRecord::Base
  attr_accessible :fan_id, :genre_id

  belongs_to :fan
  belongs_to :genre
end
