class CreateFanGenres < ActiveRecord::Migration
  def change
    create_table :fan_genres do |t|
      t.integer :fan_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
