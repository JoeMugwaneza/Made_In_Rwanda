class SessionsController < ApplicationController

  def new

  end

  def create
    role = params[:role_id].to_i
    user = User.find_by(email: params[:name]) 
    if user && user.authenticate(params[:password]) && role == 2
      session[:user_id] = user.id
      flash[:warning] = "Successfully logged in"

      redirect_to "/users"
    elsif user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:warning] = "Successfully logged in"

      redirect_to "/products"
    else
      flash[:warning] = "Invalide email or password"
      redirect_to "/login"
    end 
  end


  def destroy
    session[:user_id] = nil
    flash[:success] = "Successfully logged out"
    redirect_to "/login"
  end

end
