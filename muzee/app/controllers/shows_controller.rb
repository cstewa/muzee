class ShowsController < ApplicationController
  respond_to :json

  #have this accept params of the date and if nothing show todays. you can even pass "all" as a param perhaps
  def index
    @shows = Show.all
    respond_with Show.all
  end

  def show
    @show = Show.find(params[:id])
    respond_with Show.find(params[:id])
  end

  def create
    respond_with Show.create(params[:entry])
  end

  def update
    respond_with Show.update(params[:id], params[:entry])
  end

  def destroy
    respond_with Show.destroy(params[:id])
  end

  def search
    date_to_search = params[:date]
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
    @shows = Show.find(:all, :conditions => condition)
    respond_with @shows
  end

end
