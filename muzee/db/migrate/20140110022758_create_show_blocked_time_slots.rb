class CreateShowBlockedTimeSlots < ActiveRecord::Migration
  def change
    create_table :show_blocked_time_slots do |t|
      t.integer :show_id
      t.integer :blocked_time_slot_id

      t.timestamps
    end
  end
end
