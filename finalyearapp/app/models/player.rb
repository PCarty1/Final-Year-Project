class Player < ActiveRecord::Base
  attr_accessible :address, :dateofbirth, :email, :gender, :height, :name, :phone, :position, :squadnumber, :team_id, :weight
belongs_to :team


	#geocoded_by :address
	#after_validation :geocode, :if => :address_changed?
	validates :squadnumber, :numericality => { :greater_than => 1, :less_than_or_equal_to => 99 }
	
	validates_presence_of :address, :name, :email, :phone
	validates_uniqueness_of :name, :squadnumber, :email 
	validates_format_of :phone,
      :with => /[0-9]{3}-[0-9]{7}/,
      :message => "- Phone numbers must be in xxx-xxxxxxx format."
end
