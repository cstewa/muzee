class CreateArtistBlockedTimeSlots < ActiveRecord::Migration
  def change
    create_table :artist_blocked_time_slots do |t|
      t.integer :artist_id
      t.integer :blocked_time_slot_id

      t.timestamps
    end
  end
end
