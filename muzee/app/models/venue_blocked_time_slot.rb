class VenueBlockedTimeSlot < ActiveRecord::Base
  attr_accessible :blocked_time_slot_id, :venue_id

  belongs_to :venue
  belongs_to :blocked_time_slot
end
