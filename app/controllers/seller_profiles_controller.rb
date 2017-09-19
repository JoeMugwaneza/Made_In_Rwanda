class SellerProfilesController < ApplicationController

  def index
    @sellers = SellerProfile.all
    # @sellers =  User.joins(:seller_profile).where('seller_profiles.user_id IS NOT NULL').distinct
    
  end
  def show
    @seller = SellerProfile.find_by(id: params[:id])
    @products = @seller.products.paginate(:page => params[:page], :per_page => 8).order("created_at DESC")

  end

  def new
     @seller_profile = SellerProfile.new
  end

  def create
  @seller_profile = current_user
    street_code = params[:street_code]
    coordinates = Geocoder.coordinates(street_code)

    @seller_profile = SellerProfile.new(
      company_name: params[:company_name],
      company_email: params[:company_email],

      street_code: street_code,
      latitude: coordinates[0],
      longitude: coordinates[1],
      location: params[:location],
      contact: params[:contact],
      user_id: current_user.id,
      seller_logo: params[:seller_logo]
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

  
       @seller_profile.update(
        company_name: params[:company_name],
        company_email: params[:company_email],
        street_code: street_code,
        latitude: coordinates[0],
        longitude: coordinates[1],
        location: params[:location],
        contact: params[:contact],
        image: params[:image]
        )

      redirect_to "/seller_profiles/#{current_user.seller_profile.id}}"
    end

    def destroy
      @product = Product.find_by(id: params[:id])
      @product.destroy

      redirect_to "/seller_profiles/#{@seller.id}"
    end
end