class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:email])  

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:warning] = "Successfully logged in"

      redirect_to "/products"
    else 
      falsh[:warning] = "Invalide email or password"
      redirect_to "/login"
    end 
  end


  def destroy
    session[:user_id] = nil
    flash[:success] = "Successfully logged out"
    redirect_to "/login"
  end

end
