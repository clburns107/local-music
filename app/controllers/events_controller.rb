# This file is for the controller actions ruby code that is to be ran when a specific path is requested

class EventsController < ApplicationController
  def list
    @all_events = Event.all.order(:date)
    render "index"
  end

  def details
    @name_check = ""
    @events_on_this_day = Event.where(date: params[:id])
    render "details"
  end
end