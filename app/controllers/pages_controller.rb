class PagesController < ApplicationController
  def index
    @log_climbs = OutdoorClimbing.order(date: :desc)
  end

  def gallery
    @log_climbs = OutdoorClimbing.order(date: :desc)
  end

end
