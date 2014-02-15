class ShowsController < ApplicationController
  respond_to :json

  #have this accept params of the date and if nothing show todays. you can even pass "all" as a param perhaps
  def index
    @shows = Show.search(params).all
    respond_with @shows
  end

  def show
    @show = Show.find(params[:id])
    respond_with @show
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

end
