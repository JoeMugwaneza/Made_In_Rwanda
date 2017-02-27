class ImagesController < ApplicationController

  def index
    @product_id = params[:product_id]
    @images = Product.find_by(id: @product_id).images

  end 

  def show
    @image = Image.find_by[id: params[:id]]
  end 

  def new
    @product = Product.last
  end

  def create
 
    @image = Image.create(product_id: params[:product_id], url: params[:url])

    redirect_to "/products/#{@image.product_id}", notice: "Successfully added image to the product"

  end 

  def edit 
  end 

  def update
  end

  def destroy
  end 

end
