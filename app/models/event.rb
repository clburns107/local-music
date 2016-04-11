class Event < ActiveRecord::Base
  has_many :bands
  has_many :venues
end
