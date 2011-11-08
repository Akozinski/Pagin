class ProductsController < ApplicationController
	
	def index
		@products = Product.paginate(:page => params[:page])
	end
	
	def show
		@product = Product.find(params[:id])
	end
	
	def new
		@product = Product.new
		
	end
	
	def create
		@product = Product.new(params[:product])
	end

end
