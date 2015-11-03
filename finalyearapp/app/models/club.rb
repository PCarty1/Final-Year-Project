class Club < ActiveRecord::Base
  attr_accessible :crest, :email, :homeground, :info, :location, :name, :phone
  has_many :teams, :dependent => :destroy
 	has_many :products
  
	#geocoded_by :location
	#after_validation :geocode, :if => :location_changed?
  
  
	mount_uploader :crest, ImageUploader
	validates_format_of :phone,
      :with => /[0-9]{2}-[0-9]{7}/,
      :message => "- Phone numbers must be in xx-xxxxxxx format."
	 validates :email,
            :format => {
              :with    => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i,
              :message => "Proper Email Format Required. Eg: xxx@xxx.xxx" }
	validates_presence_of :email, :name, :homeground, :phone 
	validates_uniqueness_of :email, :name
	
end
