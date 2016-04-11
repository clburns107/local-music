# This file is for the controller actions ruby code that is to be ran when a specific path is requested

class UsersController < ApplicationController
  def home
    render "home"
  end

end