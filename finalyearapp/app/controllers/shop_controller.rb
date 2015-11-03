class ShopController < ApplicationController
  def index
  @products = Product.order("title asc").all	
    @products = Product.paginate(:page => params[:page], :per_page => 4)
  end
end
