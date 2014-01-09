class CreateArtistRatings < ActiveRecord::Migration
  def change
    create_table :artist_ratings do |t|
      t.integer :rating
      t.integer :artist_id
      t.integer :artist_rater_id
      t.string :artist_rater_type

      t.timestamps
    end
  end
end
