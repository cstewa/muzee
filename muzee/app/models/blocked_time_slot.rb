class BlockedTimeSlot < ActiveRecord::Base
  attr_accessible :duration, :start_time, :day, :pending

  has_and_belongs_to_many :shows
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :venues
end
