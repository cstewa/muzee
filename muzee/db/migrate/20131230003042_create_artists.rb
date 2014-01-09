class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.integer :lowest_price
      t.integer :highest_price

      t.timestamps
    end
  end
end
