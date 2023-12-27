class PagesController < ApplicationController
  def index
    @log_climbs = OutdoorClimbing.order(date: :desc)
  end

  def gallery
    @log_climbs = OutdoorClimbing.order(date: :desc)
  end

  def climbingmap
    @log_climbs = OutdoorClimbing.order(date: :desc)
  end

  def analytics
    @individual_outdoor_climbs = IndividualOutdoorClimb.all
    @log_climbs = OutdoorClimbing.all

    if params[:time_period] == "All Logs"
      start_date = nil
      end_date = nil
    elsif params[:time_period] == "This Week"
      start_date = Time.now.beginning_of_week
      end_date = Time.now.end_of_week
    elsif params[:time_period] == "This Month"
      start_date = Time.now.beginning_of_month
      end_date = Time.now.end_of_month
    elsif params[:time_period] == "This Year"
      start_date = Time.now.beginning_of_year
      end_date = Time.now.end_of_year
    else
      start_date = nil
      end_date = nil
    end

    if start_date && end_date
      @log_climbs_filtered = @log_climbs.where(user_id: current_user.id, date: start_date..end_date)
    else
      @log_climbs_filtered = @log_climbs.where(user_id: current_user.id)
    end
  end

end
