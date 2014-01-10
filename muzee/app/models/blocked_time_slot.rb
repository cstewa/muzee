class BlockedTimeSlot < ActiveRecord::Base
  attr_accessible :duration, :start_time, :day, :pending

  has_many :shows, through: :show_blocked_time_slots
  has_many :show_blocked_time_slots

  has_many :artists, through: :artist_blocked_time_slots
  has_many :artist_blocked_time_slots

  has_many :venues, through: :venue_blocked_time_slots
  has_many :venue_blocked_time_slots


end
