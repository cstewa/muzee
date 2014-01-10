class ArtistBlockedTimeSlot < ActiveRecord::Base
  attr_accessible :artist_id, :blocked_time_slot_id

  belongs_to :artist
  belongs_to :blocked_time_slot
end
