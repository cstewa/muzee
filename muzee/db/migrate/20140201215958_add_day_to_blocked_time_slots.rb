class AddDayToBlockedTimeSlots < ActiveRecord::Migration
  def change
    add_column :blocked_time_slots, :day, :datetime
  end
end
