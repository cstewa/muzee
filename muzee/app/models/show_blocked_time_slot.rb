class ShowBlockedTimeSlot < ActiveRecord::Base
  attr_accessible :blocked_time_slot_id, :show_id

  belongs_to :show
  belongs_to :blocked_time_slot
end
