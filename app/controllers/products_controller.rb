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
     response = Unirest.post("http://uploads.im/api?upload", parameters: {file: params[:image]}).body
    @product = Product.new(
      name: params[:name],
      description: params[:description],
      quantity: params[:quantity],
      price: params[:price],
      image_url: response["data"]["img_url"]
      )
    @product.user_id = current_user.id
    if @product.save
      
      flash[:success] = "Successfully created Product"
      redirect_to "/products"
    else 
      render 'new'
    end 
  end 
  def edit
    @product = Product.find_by(id: params[:id])
  end 

  def update
    @product = Product.find_by(id: params[:id])

    if @product.update({id: params[:id], name: params[:name], description: params[:description], quantity: params[:quantity], price: params[:price]})

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
