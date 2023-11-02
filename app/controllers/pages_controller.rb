class PagesController < ApplicationController
  def index
    @log_climbs = OutdoorClimbing.all # Fetch all log climbs (you may need to adjust this query)
  end

  def gallery
    @log_climbs = OutdoorClimbing.all # Adjust this query to fetch the log climbs you want to display
  end

end
