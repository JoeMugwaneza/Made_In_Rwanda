class ProductsController < ApplicationController
   before_action :authenticate_user!, except: [:index, :show, :search]

  def index
    @products = Product.paginate(:page => params[:page], :per_page => 6).order("created_at DESC")
  end 

  def show 
    @product = Product.find_by(id: params[:id])
  end

  def new
    @product = Product.new
  end 
  # Place for create and update

  def create
    @product = Product.new(
      name: params[:name],
      description: params[:description],
      quantity: params[:quantity],
      price: params[:price],
      image: params[:iamge]
      )
      @product.seller_profile_id = current_user.seller_profile.id
    if @product.save
      
        CategoryProduct.create(product_id: @product.id, category_id: params[:category])
      flash[:success] = "Successfully created Product"
      
      redirect_to "/seller_profiles/#{current_user.seller_profile.id}"
    else 
      render 'new'
    end 
  end 
  def edit
    @product = Product.find_by(id: params[:id])
  end 

  def update
    @product = Product.find_by(id: params[:id])

    if @product.update({name: params[:name], description: params[:description], quantity: params[:quantity], price: params[:price], image: params[:image]})

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