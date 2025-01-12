class Admins::Products::CompletedsController < Admins::ApplicationController
  before_action :set_product, only: %i[create destroy]

  def create
    @product.publish!
    redirect_to admins_product_path(@product), notice: '公開しました'
  end

  def destroy
    @product.unpublish!
    redirect_to admins_product_path(@product), notice: '非公開にしました'
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end
end
