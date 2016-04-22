class Event < ActiveRecord::Base
  belongs_to :venue
  belongs_to :band

  require 'Date'

end
