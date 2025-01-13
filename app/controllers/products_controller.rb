class ProductsController < ApplicationController
  def index
    @products = Product.published.default_order.page params[:page]
  end

  def show
    @product = Product.published.find(params[:id])
  end
end
