class Competition < ActiveRecord::Base
  attr_accessible :entry_fee, :level, :name, :prize, :rules, :sponsor
  has_many :fixtures, :dependent => :destroy
  has_many :teams 
  mount_uploader :sponsor, ImageUploader
  
  validates_presence_of :entry_fee, :name, :level
  validates_uniqueness_of :name
end
