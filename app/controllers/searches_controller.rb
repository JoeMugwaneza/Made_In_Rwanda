class SearchesController < ApplicationController

   def index
     search_query = params[:search_input]
     @products = Product.where("name ILIKE? OR description ILIKE?", "%#{search_query}%", "%#{search_query}%").all
     
     @categories = Category.where("name ILike?","%#{search_query}%").all
     @seller_profiles = SellerProfile.where("company_name ILIKE? OR location ILIKE?", "%#{search_query}%", "%#{search_query}%").all

      if @products.any? || @categories.any? || @seller_profiles.any?
        render :index
      else
        flash[:info] = "No results match #{search_query}"
      end
   end 
end
