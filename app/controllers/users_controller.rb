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
      cookies[:auth_token] = user.auth_token
      redirect_to root_url, :notice => "Successfully created account!"
    else 
      flash[:warning] = "Invalid email or password"

      render 'new'
    end 
      
  end
end


 #to use below user.save 
 # session[:user_id] = user.id