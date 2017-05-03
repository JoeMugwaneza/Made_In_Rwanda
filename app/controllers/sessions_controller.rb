class SessionsController < ApplicationController

  def new
  end
   
  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
        cookies[:auth_token] = user.auth_token
      end
      redirect_to root_url, :notice => "logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render 'new'
    end
  end

  def destroy
    cookies.delete(:auth_token)
    redirect_to "/login", :notice => "logged out!"
  end

end

 # def create
 #    user = User.find_by(email: params[:email])

 #    if user && user.authenticate(params[:password])
 #      session[:user_id] = user.id
 #      if user.seller_profile
 #        redirect_to "/seller_profiles/#{user.seller_profile.id}"
 #      else
 #        redirect_to "/"
 #      end 
 #        flash[:success] = "Successfully logged in!"
 #    else 
 #      flash[:warning] = "Invalid email or password"
 #      redirect_to "/login"
 #    end 
 #  end 

 #  def destroy
 #    session[:user_id] = nil
 #    flash[:success] = "Successfully logged out"
 #    redirect_to "/login"
 #  end
