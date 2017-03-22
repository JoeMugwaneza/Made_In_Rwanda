class SellerProfilesController < ApplicationController

  def index
    # @users =  User.joins(:seller_profile).where('seller_profiles.user_id IS NOT NULL').distinct
    
  end

  def show
    @products = current_user.products
  end

  def new
    # seller_profile = SellerProfile.new
  end

  def create
  @seller_profile = current_user
    response = Unirest.post("http://uploads.im/api?upload", parameters: {file: params[:image]}).body
    @seller_profile = SellerProfile.new(
      company_name: params[:company_name],
      company_email: params[:company_email],
      image_url: response["data"]["img_url"],
      location: params[:location],
      street_code: params[:street_code],
      contact: params[:contact],
      user_id: current_user.id
      )


      if @seller_profile.save
        redirect_to "/seller_profiles/#{@seller_profile.id}"
      else 
        render 'new'
      end
    end
end
