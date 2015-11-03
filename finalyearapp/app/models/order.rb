class Order < ActiveRecord::Base
  attr_accessible :paymethod, :total, :user_id
  belongs_to :customer
  has_many :lineitems
  has_many :products, :through => :lineitems

  
  def add_lineitems_from_cart(cart)
  
		cart.lineitems.each do |item|
		item.cart_id = nil
		lineitems << item		.
		end
	end
end