class BlockedTimeSlot < ActiveRecord::Base
  attr_accessible :duration, :start_time, :day, :pending, :am

  has_many :shows, through: :show_blocked_time_slots
  has_many :show_blocked_time_slots

  has_many :artists, through: :artist_blocked_time_slots
  has_many :artist_blocked_time_slots

  has_many :venues, through: :venue_blocked_time_slots
  has_many :venue_blocked_time_slots

  #run .getlocal on .start_time to get the proper time. See other Ruby methods in Time class. Also .hour


  def am?
    return true if !self.am.false
  end

end
