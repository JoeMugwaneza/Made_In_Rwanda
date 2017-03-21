class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end 

  def current_seller
    @current_seller ||= Seller.find_by(id: session[:seller_id]) if session[:seller_id]
  end
  helper_method :current_user
  helper_method :current_seller

  def authenticate_admin!
    unless current_seller && current_seller.admin
      flash[:danger] = "Access Denied"
      redirect_to "/"
    end
  end 
  def authenticate_seller!
    flash[:danger] = "Access Denied"
    redirect_to "/" unless current_seller
  end
  

  def authenticate_buyer!
    flash[:danger] = "Access Denied"
    redirect_to "/" unless current_user
  end

end
