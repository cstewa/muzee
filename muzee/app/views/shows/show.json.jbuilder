json.extract! @show, :id, :price, :blocked_time_slot, :artist_id, :venue_id
json.artist_first_name @show.artist.getUser.first_name
json.artist_last_name @show.artist.getUser.last_name

