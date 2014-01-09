class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.text :about
      t.integer :lowest_price
      t.integer :highest_price
      t.string :address

      t.timestamps
    end
  end
end
