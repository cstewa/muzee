class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.integer :price
      t.integer :venue_id
      t.integer :artist_id
      t.timestamps
    end
  end
end
