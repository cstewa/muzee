class RemoveStartTimeFromBlockedTimeSlots < ActiveRecord::Migration
  def change
    remove_column :blocked_time_slots, :start_time, :day
  end
end
