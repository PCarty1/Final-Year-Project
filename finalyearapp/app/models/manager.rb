class Manager < ActiveRecord::Base
  attr_accessible :address, :contract, :dateofbirth, :email, :name, :nationality, :phone, :yearsexperience
  has_one :team
  
  
	#geocoded_by :address
	#after_validation :geocode, :if => :address_changed?
	
	validates_presence_of :address, :name, :contract, :email, :phone
	validates_uniqueness_of :name, :email 
	 validates :email,
            :format => {
              :with    => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i,
              :message => "Proper Email Format Required. Eg: xxx@xxx.xxx" }
	validates_format_of :phone,
      :with => /[0-9]{2}-[0-9]{7}/,
      :message => "- Phone numbers must be in xx-xxxxxxx format."
	
 end

 