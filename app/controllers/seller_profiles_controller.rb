class SellerProfilesController < ApplicationController

  def index
    # @users =  User.joins(:seller_profile).where('seller_profiles.user_id IS NOT NULL').distinct
    
  end

  def show
    @products = current_user.seller_profile.products.all.paginate(:page => params[:page], :per_page => 3)

  end

  def new
    # seller_profile = SellerProfile.new
  end

  def create
  @seller_profile = current_user
    street_code = params[:street_code]
    coordinates = Geocoder.coordinates(street_code)

    # response = Unirest.post("http://uploads.im/api?upload", parameters: {file: params[:image]}).body
          # image_url: response["data"]["img_url"],
    @seller_profile = SellerProfile.new(
      company_name: params[:company_name],
      company_email: params[:company_email],

      street_code: street_code,
      latitude: coordinates[0],
      longitude: coordinates[1],
      location: params[:location],
      contact: params[:contact],
      user_id: current_user.id
      )

      if @seller_profile.save
        redirect_to "/seller_profiles/#{@seller_profile.id}"
      else 
        render 'new'
      end
    end


    def update
      @seller_profile = SellerProfile.find_by(id: params[:id])
      street_code = params[:street_code]
      coordinates = Geocoder.coordinates(street_code)

      # response = Unirest.post("http://uploads.im/api?upload", parameters: {file: params[:image]}).body
      
       @seller_profile.update(
        company_name: params[:company_name],
        company_email: params[:company_email],
        street_code: street_code,
        latitude: coordinates[0],
        longitude: coordinates[1],
        location: params[:location],
        contact: params[:contact]
        )

      redirect_to "/seller_profiles/#{@seller_profile.id}}"
    end
end


 # image_url: response["data"]["img_url"],