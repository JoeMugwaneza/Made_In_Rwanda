class UsersController < ApplicationController

  def new
    @roles = Role.where.not(user_type:"admin")
    @user = User.new
    
  end

  def create
   @user = User.new(
    name: params[:name],
    email: params[:email],
    password: params[:password],
    password_confirmation: params[:password_confirmation],
    role_id: params[:role_id]
    )

    if @user.save
      session[:user_id] = user.id
      flash[:success] = "Successfully created account"

      redirect_to "/products"
    else 
      flash[:warning] = "Invalid email or password"

      redirect_to "/signup"
    end 
    
  end
end
