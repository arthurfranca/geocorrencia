class Occurrence < ActiveRecord::Base

  # disable STI cause rails was using the type column as i didn't intend
  self.inheritance_column= "type_disabled"

  belongs_to :type
  belongs_to :hour
  belongs_to :declarant
  
  accepts_nested_attributes_for :declarant

  validate :date,
    :presence => true

  attr_accessible :date, :description, :lat_lon, :declarant_attributes, :type_id, :hour_id # Add this to run 'rake db:seed' -> ,:declarant_id,:hour_id,:type_id

  # Geographic implementation for the :lat_lon column.
  self.rgeo_factory_generator = RGeo::Geos.method(:factory)
  # SRID 4326 = WGS84
  set_rgeo_factory_for_column(:lat_lon, RGeo::Geographic.spherical_factory(:srid => 4326))

end
