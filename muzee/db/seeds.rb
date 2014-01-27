# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#same artist and venue
Show.create(:price => 20, :artist_id => 1, :venue_id => 2, :blocked_time_slot_id => 5)
Show.create(:price => 20, :artist_id => 1, :venue_id => 2, :blocked_time_slot_id => 6)
Show.create(:price => 20, :artist_id => 1, :venue_id => 2, :blocked_time_slot_id => 7)

#same day
Show.create(:price => 20, :artist_id => 1, :venue_id => 1, :blocked_time_slot_id => 8)
