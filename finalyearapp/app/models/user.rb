class User < ActiveRecord::Base
  attr_accessible :dateofbirth, :email, :gender, :name, :password, :password_confirmation, :status, :picture
  has_secure_password
  has_many :orders
  
  
  mount_uploader :picture, ImageUploader
  
  
	validates_confirmation_of :password, presence: true
	validates :email,
            :format => {
              :with    => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i,
              :message => "Proper Email Format Required. Eg: xxx@xxx.xxx" }
	validates_presence_of :email, :name,:password
	validates_uniqueness_of :name, :email
	
	 # Only allow the user to upload .bmp, .gif, .jpg, .jpeg, and .png files
 # validates_attachment_content_type :image, :content_type => /^image\/(bmp|gif|jpg|jpeg|png)/

	
	def self.authenticate(name, email)
		user = find_by_name(name)
		return nil  if user.nil?
		return user if user.email == email
		return nil
	end  

end
