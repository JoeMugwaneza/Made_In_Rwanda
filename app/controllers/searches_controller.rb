class SearchesController < ApplicationController

   def index
     search_query = params[:search_query]
     @products = Product.where("name LIKE? OR description LIKE?", "%#{search_query}%", "%#{search_query}%")

     if @products.empty?
       flash[:info] = "No results match #{search_query}"
     end
      render :index
   end 
end
