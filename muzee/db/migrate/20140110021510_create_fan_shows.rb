class CreateFanShows < ActiveRecord::Migration
  def change
    create_table :fan_shows do |t|
      t.integer :fan_id
      t.integer :show_id

      t.timestamps
    end
  end
end
