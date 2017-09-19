class ProductsController < ApplicationController

  def index
    if params[:sort] == "asc"
      @products = Product.paginate(:page => params[:page], :per_page => 6).all.order(:price)
      
    elsif params[:sort] == "desc"
      @products = Product.paginate(:page => params[:page], :per_page => 6).all.order(price: :desc)

    elsif params[:category].blank?
      @products = Product.paginate(:page => params[:page], :per_page => 9).order("created_at DESC")
    else
      @category_id =  Category.find_by(name: params[:category]).id
      @products = Product.where(category_id: @category_id).paginate(:page => params[:page], :per_page => 6).order("created_at DESC")
    end 
  end 

  def show 
    @product = Product.find_by(id: params[:id])
    @product_category = Product.find_by(id: params[:id]).category.name
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
      image: params[:image],
      category_id: params[:category]
      )
      @product.seller_profile_id = current_user.seller_profile.id

    if @product.save
      
        # Category.create(product_id: @product.id, category_id: params[:category])
      flash[:success] = "Successfully created Product"
      
      redirect_to "/seller_profiles/#{current_user.seller_profile.id}"
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
    if @product.update({name: params[:name], description: params[:description], quantity: params[:quantity], price: params[:price], image: params[:image], category_id: params[:category]})
      redirect_to @product
    else 
      render 'edit'
    end 
  end 
  
  def destroy 
    @product = Product.find_by(id: params[:id])

    @product.destroy

    redirect_to "/seller_profiles/#{current_user.seller_profile.id}", notice: "Successfully deleted a product"
  end
end