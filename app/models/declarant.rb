class Declarant < ActiveRecord::Base
  # attr_accessible :title, :body
  has_one :address

  accepts_nested_attributes_for :address
  
  validate :name,
    :presence => true
    
  attr_accessible :name, :email, :place_of_birth, :phone, :address_attributes
  
end
