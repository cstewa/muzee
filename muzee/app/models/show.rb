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

  def self.search(params)
    shows = self
    if params[:date]
      shows = shows.by_date(params[:date])
    end
    return shows
  end

  def self.by_date(date)
    date_to_search = date
    date_array = date_to_search.split("-")
    datetime_to_search_against = DateTime.new(date_array[2].to_i, date_array[0].to_i, date_array[1].to_i)
    date_to_search_against = datetime_to_search_against.to_date
    @slots = BlockedTimeSlot.all
    slot_ids = []
    @slots.each do |slot|
      if slot.day.to_date == date_to_search_against
        slot_ids << slot.id
      end
    end
    condition = []
    slot_ids.each do |id|
      if condition.length == 0
        condition << "blocked_time_slot_id = ?"
        condition << id
      else
        condition[0] += " OR blocked_time_slot_id = ?"
        condition << id
      end
    end
    Show.where(condition)
    # Show.find(:all, :conditions => condition)
  end
  #date: 2-5-2014, 2-6-2014, 2-7-2014, 2-8-2014


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
