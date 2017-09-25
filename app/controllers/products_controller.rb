class ProductsController < ApplicationController

  def index
    if params[:sort] == "asc"
      @products = Product.paginate(:page => params[:page], :per_page => 6).all.order(:price)
      
    elsif params[:sort] == "desc"
      @products = Product.paginate(:page => params[:page], :per_page => 6).all.order(price: :desc)

    elsif params[:category].blank?
      @products = Product.paginate(:page => params[:page], :per_page => 9).order("created_at DESC")
    else
      @products = Category.find_by(name: params[:category]).products.paginate(:page => params[:page], :per_page => 6).order("created_at DESC")
    end 
  end 

  def show 
    @product = Product.find_by(id: params[:id])
    @product_category = Product.find_by(id: params[:id]).categories
  end

  def new
    @product = Product.new
  end 
  # Place for create and update

  def create
    current_seller = current_user.seller_profile
    @product = current_seller.products.build(product_params)

    if @product.save
      flash[:success] = "Successfully created Product"
      redirect_to "/products/#{@product.id}/product_images/new"
    else 
      render 'new'
    end 
  end 

  def edit
    product = Product.find_by(id: params[:id])
    if current_user && current_user.seller_profile && current_user.seller_profile.products.include?(product) || current_user.admin
      @product = product
    else
      flash[:warning] = "access denied"
      redirect_to "/"
    end
  end 

  def update
    @product = Product.find_by(id: params[:id])
    if @product.update(product_params)
      redirect_to @product
    else 
      render 'edit'
    end 
  end 
  
  def destroy 
    @seller = current_user.seller_profile
    @product = Product.find_by(id: params[:id])
    @product.destroy

    redirect_to seller_profile_path(@seller), notice: "Successfully deleted a product"
  end

  protected


  def product_params
    params.require(:product).permit(:name, :description, :quantity, :seller_profile_id, :price, category_ids: [])
  end
end