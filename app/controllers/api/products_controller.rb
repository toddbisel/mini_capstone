class Api::ProductsController < ApplicationController

  def products_display
    @products = Product.all
    render 'products_display.json.jb'
  end

  def product_one
    @product = Product.first
    render 'product_one.json.jb'
  end

  def product_two
    @product = Product.second
    render 'product_two.json.jb'
  end

  def product_three
    @product = Product.third
    render 'product_three.json.jb'
  end

  def product_four
    @product = Product.fourth
    render 'product_four.json.jb'
  end
end
