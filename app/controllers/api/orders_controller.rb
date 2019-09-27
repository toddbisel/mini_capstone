class Api::OrdersController < ApplicationController

  before_action :authenticate_user

  def index
    @orders = current_user.orders

    render 'index.json.jb'
  end

  def create

    carted_products = current_user.carted_products.where(status: "carted")

    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.product.price * carted_product.quantity
    end

    calculated_tax = calculated_subtotal * 0.06
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
      )



    if @order.save
      carted_products.update_all(status: "purchased", order_id: @order.id)
      render 'show.json.jb'
    else
      render json: {errors: @show.errors.full_messages}
    end
  end
end