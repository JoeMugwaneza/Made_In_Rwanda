Rails.application.routes.draw do
  root 'products#index'
  resources :products 

  get "/images", to:'images#index'
  get "/images/new", to: 'images#new'
  post "/images", to:'images#create'

  delete "/images/", to: 'images#destroy'
end
