class CreateBlockedTimeSlots < ActiveRecord::Migration
  def change
    create_table :blocked_time_slots do |t|
      t.time :start_time
      t.float :duration
      t.string :day
      t.boolean :pending

      t.timestamps
    end
  end
end
