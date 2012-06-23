class Ubicacion < ActiveRecord::Base
  attr_accessible :direccion, :latitude, :longitude
  geocoded_by :direccion
  after_validation :geocode, :if => :direccion_changed?
end
