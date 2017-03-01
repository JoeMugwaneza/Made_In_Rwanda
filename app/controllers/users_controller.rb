class UsersController < ApplicationController

  def new
    
  end

  def create
    first_name = params[:first_name]
    last_name = params[:last_name]
    email = params[:email]
    password = params[:password]
    password_confirmation = params[:password_confirmation]

    user = User.new(first_name: first_name, last_name: last_name, email: email, password: password, password_confirmation: password_confirmation)

    if user.save
      session[:user_id] = user.id
      flash[:success] = "Successfully created account"

      redirect_to "/products"
    else 
      flash[:warning] = "Invalid email or password"

      redirect_to "signup"
    
  end
end
