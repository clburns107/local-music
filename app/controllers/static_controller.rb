# This file is for the controller actions ruby code that is to be ran when a specific path is requested

class StaticController < ApplicationController
  def playground
    render "static_pages"
  end
end
