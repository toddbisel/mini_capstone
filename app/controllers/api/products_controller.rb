class Api::ProductsController < ApplicationController

  def index
    
    @products = Product.all
    
    if params[:search]
      @products = Product.where("name iLIKE ?", "%#{params[:search]}%")
    end

    if params[:discount]
      @products = Product.where("price <= ?", 1000000)
    end

    if params[:sort] == "price"
      @products = @products.order(:price)  
      if params[:sort_order] == "desc"
      @products = @products.order(price: :desc)
      end
    end

    render 'index.json.jb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    
    render 'show.json.jb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price].to_i,
      image_url: params[:image_url],
      description: params[:description]
    )
    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: 422
    end
  end

  def update
    @product = Product.find_by(id: params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    
    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: 422
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Recipe successfully destroyed!"}
  end

end  






  # def product_one
  #   @product = Product.first
  #   render 'product_one.json.jb'
  # end

  # def product_two
  #   @product = Product.second
  #   render 'product_two.json.jb'
  # end

  # def product_three
  #   @product = Product.third
  #   render 'product_three.json.jb'
  # end

  # def product_four
  #   @product = Product.fourth
  #   render 'product_four.json.jb'
  # end