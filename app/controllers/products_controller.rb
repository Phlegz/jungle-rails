class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @new_review = Review.new
    @review = @product.review.order("updated_at DESC")
  end

end
