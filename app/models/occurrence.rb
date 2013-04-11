class Occurrence < ActiveRecord::Base
  # attr_accessible :title, :body

  #self.rgeo_factory_generator = RGeo::Geos.method(:factory)
  # 4236 - the srid on the spatialite for the wgs84 pattern
  #set_rgeo_factory_for_column(:latlng, RGeo::Geographic.spherical_factory(:srid => 4326)
  
  belongs_to :type
  belongs_to :hour
  belongs_to :declarant
  
  accepts_nested_attributes_for :declarant

  validate :date,
    :presence => true
    
  attr_accessible :date, :description, :lat_lon, :declarant_attributes, :type_id, :hour_id # Add this to run 'rake db:seed' -> ,:declarant_id,:hour_id,:type_id

  # Geographic implementation for the :lat_lon column.
  self.rgeo_factory_generator = RGeo::Geos.method(:factory)
  set_rgeo_factory_for_column(:lat_lon, RGeo::Geographic.spherical_factory(:srid => 4326))

end
