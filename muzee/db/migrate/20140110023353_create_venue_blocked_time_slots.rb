class CreateVenueBlockedTimeSlots < ActiveRecord::Migration
  def change
    create_table :venue_blocked_time_slots do |t|
      t.integer :venue_id
      t.integer :blocked_time_slot_id

      t.timestamps
    end
  end
end
