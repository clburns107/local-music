# This file is for the controller actions ruby code that is to be ran when a specific path is requested

class EventsController < ApplicationController
  def list
    #variable that holds 7 consecutive dates
    #loop through each date on view generating a link for each date
    @monday = Event.where(:date => 2016-05-02)
    @tuesday = 2016-05-02
    @wednesday = 2016-05-02
    @thursday = 2016-05-02
    @friday = 2016-05-02
    @saturday = 2016-05-02
    @sunday = 2016-05-02

    @all_events = Event.where(:date )
    @date_check = ""
    render "index"
  end

  def details
    @name_check = ""
    @events_on_this_day = Event.where(date: params[:date])
    render "details"
  end
end
