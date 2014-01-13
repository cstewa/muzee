class Show < ActiveRecord::Base
  attr_accessible :price, :venue_id, :artist_id

  #method for @show.blocked_time_slot.whatever for time and day

  #method to get the @show.venue.address

  #method for status (occurred vs occuring) based on time

  has_many :fans, through: :fan_shows
  has_many :fan_shows

  has_many :blocked_time_slots, through: :show_blocked_time_slots
  has_many :show_blocked_time_slots

  belongs_to :artist
  belongs_to :venue

  #remember you have to do @show.blocked_time_slots.first

end
