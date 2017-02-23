class ProductsController < ApplicationController

  def index
    @products = Product.all
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

    @product = Product.create(name: name, description: description, price: price)

    redirect_to "/products/#{@product.id}"
  end 
  def edit
    @product = Product.find_by(id: params[:id])
  end 

  def update
    @product = Product.find_by(id: params[:id])
    @product.update({id: params[:id], name: params[:name], description: params[:description], price: params[:price]})


    redirect_to "/products/#{@product.id}"
  end 

  def destroy 

    @product = Product.find_by(id: params[:id])
    @product.destroy

    redirect_to "/products"
  end
end
