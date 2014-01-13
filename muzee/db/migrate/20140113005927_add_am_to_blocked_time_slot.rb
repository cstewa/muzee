class AddAmToBlockedTimeSlot < ActiveRecord::Migration
  def change
    add_column :blocked_time_slots, :am, :boolean
  end
end
