class Product < ActiveRecord::Base
  attr_accessible :description, :image, :price, :quantity, :title
  has_many :lineitems
  has_many :orders,  :through => :lineitems
  belongs_to :club
  
	mount_uploader :image, ImageUploader

end
