class Fixture < ActiveRecord::Base
  attr_accessible :awayteam_id, :competition_id, :datetime, :hometeam_id, :losingscore, :report,
  :venue, :winningscore, :winningteam_id
  belongs_to :competition
 
  belongs_to :hometeam, :class_name => 'Team' 
  belongs_to :awayteam, :class_name => 'Team' 
  belongs_to :winningteam, :class_name => 'Team' 
 # validate :validate_datepast
  
  validates_presence_of :venue, :datetime, :hometeam_id, :awayteam_id

 # def validate_datepast
 # errors.add(:datetime, "Cannot be in the past") if datetime.past?
  
#end

#validation for hometeam/awayteam
 end
