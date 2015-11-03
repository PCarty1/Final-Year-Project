class Pic < ActiveRecord::Base
  attr_accessible :feeling, :image, :location, :name
  
  
	mount_uploader :image, ImageUploader
end
