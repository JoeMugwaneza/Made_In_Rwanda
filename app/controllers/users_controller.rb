class UsersController < ApplicationController

  def index
    @products = current_user.products.all
  end

  def new
    @roles = Role.where.not(user_type:"admin")
    @user = User.new
    
  end

  def create
    user_category_id = params[:user_category].to_i
   @user = User.new(
    name: params[:name],
    email: params[:email],
    password: params[:password],
    password_confirmation: params[:password_confirmation]
    )
   
    if @user.save
      Role.create(user_id: @user.id, user_category_id: user_category_id)
      session[:user_id] = user.id
      flash[:success] = "Successfully created account"

      redirect_to "/products"
    else 
      flash[:warning] = "Invalid email or password"

      render 'new'
    end 
    
  end
end
