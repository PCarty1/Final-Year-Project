class Cart < ActiveRecord::Base
	has_many :lineitems, dependent: :destroy  
	
	def add_product(product, cart)
	
	current_item = lineitems.find_by_product_id(product.id)
	
	if current_item
	      	current_item.quantity = current_item.quantity + 1      

	else
      		current_item = cart.lineitems.create(product_id: product)
	  		current_item.quantity =  1      

	end
	current_item
	
	end
end
