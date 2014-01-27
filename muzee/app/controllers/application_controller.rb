class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :today

  #comment
  def today
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
    return "#{day}, #{month} #{date}, #{year}"
  end

end
