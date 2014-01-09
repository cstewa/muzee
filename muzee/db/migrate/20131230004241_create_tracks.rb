class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :url
      t.integer :artist_id

      t.timestamps
    end
  end
end
