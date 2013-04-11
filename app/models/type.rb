class Type < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :occurences
  
  validate :description,
    :presence => true
    
  attr_accessible :description
  
end
