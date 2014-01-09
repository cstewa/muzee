class ArtistRating < ActiveRecord::Base
  attr_accessible :artist_id, :rating, :artist_rater_id, :artist_rater_type

  belongs_to :artist
  belongs_to :artist_rater, :polymorphic => true

  #artist_rater can either be a fan or a venue

end
