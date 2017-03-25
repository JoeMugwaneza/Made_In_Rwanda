class UsersController < ApplicationController

  def index
    @products = products.all
  end

  def new
    user = User.new
    
  end
  def create
    user = User.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    password: params[:password],
    password_confirmation: params[:password_confirmation]
    )
   
    if user.save
      session[:user_id] = user.id
      flash[:success] = "Successfully created account"

      redirect_to "/products"
    else 
      flash[:warning] = "Invalid email or password"

      render 'new'
    end 
      
  end
end
