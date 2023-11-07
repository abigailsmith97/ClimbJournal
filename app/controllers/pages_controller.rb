class PagesController < ApplicationController
  def index
    @log_climbs = OutdoorClimbing.order(date: :desc)
    @nameofuseruser = Nameofuser.name
  end

  def gallery
    @log_climbs = OutdoorClimbing.order(date: :desc)
  end

  def climbingmap
    @log_climbs = OutdoorClimbing.order(date: :desc)
  end

  def analytics
    @log_climbs = OutdoorClimbing.all

   
  end

end
