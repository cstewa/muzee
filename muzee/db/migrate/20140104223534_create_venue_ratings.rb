class CreateVenueRatings < ActiveRecord::Migration
  def change
    create_table :venue_ratings do |t|
      t.integer :venue_id
      t.integer :rating
      t.integer :venue_rater_id
      t.integer :venue_rater_type

      t.timestamps
    end
  end
end
