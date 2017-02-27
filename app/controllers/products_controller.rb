class ProductsController < ApplicationController
  def index
    @products = Product.all.order("created_at DESC")
  end 

  def show 
    @product = Product.find_by(id: params[:id])
  end

  def new
    @product = Product.new
  end 

  def create
    name = params[:name]
    description = params[:description]
    price = params[:price]

    @product = Product.new(name: name, description: description, price: price)

    if @product.save

      redirect_to "/images/new", notice: "Please add an image"
    else 
      render 'new'
    end 
  end 
  def edit
    @product = Product.find_by(id: params[:id])
  end 

  def update
    @product = Product.find_by(id: params[:id])

    if @product.update({id: params[:id], name: params[:name], description: params[:description], price: params[:price]})

      redirect_to @product
    else 
      render 'edit'
    end 
  end 

  def destroy 

    @product = Product.find_by(id: params[:id])
    @product.destroy

    redirect_to root_path, notice: "Successfully deleted a product"
  end
end
