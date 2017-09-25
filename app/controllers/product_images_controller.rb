class ProductImagesController < ApplicationController

  def index
    @product = Product.find_by(id: params[:product_id])
    @product_images = @product.product_images
  end

  def show 
    
  end

  def new
     @product = Product.find_by(id: params[:product_id])
    @product_image = ProductImage.new

  end

  def create
    @product = Product.find_by(id: params[:product_id])
    @product_image = ProductImage.new(image_params)
    
    if @product_image.save 
      redirect_to product_product_images_path(@product)
    else
      render 'new'
    end
  end

  def destroy
    @product_image = ProductImage.find_by(id: params[:id])

    if @product_image.destroy
      redirect_to :back, notice: "Successfully deleted image"
    end
  end

  protected

  def image_params
    params.require(:product_image).permit(:product_id, :image_url)
  end

end
