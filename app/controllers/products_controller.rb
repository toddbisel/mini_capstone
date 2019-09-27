class ProductsController < ApplicationController

  def index
    
    @products = Product.all
    
    if params[:search]
      @products = Product.where("name iLIKE ?", "%#{params[:search]}%")
    end

    if params[:discount]
      @products = Product.where("price <= ?", 1000000)
    end

    if params[:category]
      category = Category.find_by("name iLIKE ?", params[:category])
      @products = category.products
    end

    if params[:sort] == "price" && params[:sort_order] == "asc"
      @products = @products.order(:price)
    elsif params[:sort] == "price" && params[:sort_order] == "desc"
      @products = @products.order(price: :desc)
    else
      @products = @products.order(:id)
    end

    render 'index.html.erb'
  end
  
  def new
    render 'new.html.erb'
  end
  
  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price].to_i,
      description: params[:description],
      supplier_id: params[:supplier_id ]
    )
    if @product.save
      redirect_to "/products/#{@product.id}"
    else
      render json: {errors: @product.errors.full_messages}, status: 422
    end
  end


  def show
    @product = Product.find(params[:id])
    render 'show.html.erb'
  end

  def edit
    @product = Product.find(params[:id])
    render 'edit.html.erb'
  end

  def update
    @product = Product.find(params[:id])
    @product.update(
      name: params[:name],
      price: params[:price].to_i,
      description: params[:description],
      supplier_id: params[:supplier_id]
      )

    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to "/products"
  end
end
