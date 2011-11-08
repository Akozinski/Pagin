class CommentsController < ApplicationController

def create
	@product = Product.find(params[:product_id])
    @comment = @product.comments.create(params[:comment])
    redirect_to product_path(@product)
end

end
