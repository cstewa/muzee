class VenueRating < ActiveRecord::Base
  attr_accessible :rating, :venue_id, :venue_rater_id, :venue_rater_type

  belongs_to :venue
  belongs_to :venue_rater, :polymorphic => true

  #venue rater can be either a fan or an artist

end
