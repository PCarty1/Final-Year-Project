class ApplicationController < ActionController::Base
  
	include ApplicationHelper
	protect_from_forgery
	
  def authorise
        unless signed_in?
           store_location
           redirect_to signin_path, :notice => "Please sign in to access this page."
        end
	end

   def store_location
       session[:return_to] = request.fullpath
   end
   
   def euro(amount)
		number_to_currency(amount, :unit => '&euro;')
	end
	
   def number_to_euro(amount)
		number_to_currency(amount, :unit => '&euro;')
	end
	
	private
    def current_cart 
	@cart = Cart.find_by_id(session[:cart_id])
	if @cart.nil?
		@cart = Cart.create
		session[:cart_id] = @cart.id
	end
	@cart	#returns the cart object, getter methods in Ruby return the last statement
    end 



  

end
