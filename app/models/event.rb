class Event < ActiveRecord::Base
  belongs_to :venue
  belongs_to :band

  require 'Date'
  
  def self.this_week
    puts 'class method'
  end
  
end
