class Show < ActiveRecord::Base
  attr_accessible :price, :venue_id, :artist_id

  #method for @show.blocked_time_slot.whatever for time and day

  #method to get the @show.venue.address

  #method for status (occurred vs occuring) based on time

  has_and_belongs_to_many :fans
  has_and_belongs_to_many :blocked_time_slots
  belongs_to :artist
  belongs_to :venue
end
