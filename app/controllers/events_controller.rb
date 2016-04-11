# This file is for the controller actions ruby code that is to be ran when a specific path is requested

class EventsController < ApplicationController
  def list
    @events = Event.all
    render "index"
  end

  def details
    render "details"
    @details = [params: id]
  end
end