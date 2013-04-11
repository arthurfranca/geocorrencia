class Address < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :declarant

  validate :street,
    :presence => true
    
  attr_accessible :street, :number, :complement, :zip_code # Add this to run 'rake db:seed' -> ,:declarant_id
end
