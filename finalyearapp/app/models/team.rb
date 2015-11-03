class Team < ActiveRecord::Base
  attr_accessible :club_id, :competition_id, :kit_image, :level, :manager_id, :name, :points
  belongs_to :club
  has_many :fixtures
  
  belongs_to :manager
  has_many :players, :dependent => :destroy
  belongs_to :competition
  mount_uploader :kit_image, ImageUploader
  
  validates_presence_of :name, :level, :manager_id
  validates_uniqueness_of :name,:manager_id
  
end
