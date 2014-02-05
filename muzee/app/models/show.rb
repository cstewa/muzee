class Show < ActiveRecord::Base
  attr_accessible :price, :venue_id, :artist_id, :blocked_time_slot_id

  #method for @show.blocked_time_slot.whatever for time and day

  #method to get the @show.venue.address

  #method for status (occurred vs occuring) based on time

  has_many :fans, through: :fan_shows
  has_many :fan_shows

  belongs_to :artist
  belongs_to :venue
  belongs_to :blocked_time_slot

  #REFACTOR LATER. also put this somewhere else more appropriate
  #return array of BTS

  #split this into JUST a constant, string_date. and then do the checking in backbone
  def self.shows_today
    date_array = Date.today.to_s.split("-")
    year = date_array[0]
    date = date_array[2]
    #get day
    if Date.today.monday?
      day = "Monday"
    elsif Date.today.tuesday?
      day = "Tuesday"
    elsif Date.today.wednesday?
      day = "Wednesday"
    elsif Date.today.thursday?
      day = "Thursday"
    elsif Date.today.friday?
      day = "Friday"
    elsif Date.today.saturday?
      day = "Saturday"
    elsif Date.today.sunday?
      day = "Sunday"
    end
    #get month
    month_number = date_array[1]
    if month_number == "01"
      month = "January"
    elsif month_number == "02"
      month = "February"
    elsif month_number == "03"
      month = "March"
    elsif month_number == "04"
      month = "April"
    elsif month_number == "05"
      month = "May"
    elsif month_number == "06"
      month = "June"
    elsif month_number == "07"
      month = "July"
    elsif month_number == "08"
      month = "August"
    elsif month_number == "09"
      month = "September"
    elsif month_number == "10"
      month = "October"
    elsif month_number == "11"
      month = "November"
    elsif month_number == "12"
      month = "December"
    end
    string_date = "#{day}, #{month} #{date}, #{year}"
    #find shows blocked time slots with string_date
    show_array = []
    BlockedTimeSlot.where(:day => string_date).each do |bts|
      show_array << bts.shows
    end
    show_array.flatten!
  end

  def artist_name
    artist.name
  end

end
