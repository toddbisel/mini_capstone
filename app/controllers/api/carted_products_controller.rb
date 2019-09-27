class Api::CartedProductsController < ApplicationController

  before_action :authenticate_user

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    render 'index.json.jb'
  end

  def create
    @carted_products = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted"
      )

    if @carted_products.save
      render 'show.json.jb'
    else
      render json: {errors: @carted_products.errors.full_messages}, status: 422
    end
  end
end
