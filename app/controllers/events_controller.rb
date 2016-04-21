# This file is for the controller actions ruby code that is to be ran when a specific path is requested

class EventsController < ApplicationController
  require 'Date'


  def list
    #to show correct week in header
    #determines todays date
    #if today is not a monday subtracts by 1 day until monday is reached
    #adds six days to get sundays date

    @todays_date = Date.today + 14
    @week_range_start = @todays_date
    @week_range_end = Date.new
    @date_counter = 0

    until @week_range_start.monday? == true
      @date_counter += 1
      @week_range_start = @todays_date - @date_counter
    end

    @week_range_end = @week_range_start + 6

    @monday = Date.new
    @tuesday = Date.new
    @wednesday = Date.new
    @thursday = Date.new
    @friday = Date.new
    @saturday = Date.new
    @sunday = Date.new

    @week_events = Event.where(date: @week_range_start..@week_range_end)

    @week_events.each do |day|
      if day.date.monday? == true
        @monday = day.date
      elsif 
        day.date.tuesday? == true
        @tuesday = day.date
      end
    end
        
        

    #get collection of events for week range
    #for each object check each date
      #if date.monday? == True
       #store date in a monday variable
      #elsif 
        #date.tuesday? == True
      #etc.

    #use the date variable in ruby code for the links

    @date_check = ""
    render "index"
  end

  def details
    @name_check = ""
    @events_on_this_day = Event.where(date: params[:date])
    render "details"
  end
end
