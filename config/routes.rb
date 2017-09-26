Rails.application.routes.draw do
  
  root 'products#index'

  devise_for :users, controllers: {registrations: 'users/registrations', :omniauth_callbacks => "users/omniauth_callbacks"}


  devise_scope :user do
    get 'signout', to: 'devise/sessions#destroy', as: :signout
  end
  
  resources :products do 
    resources :product_images
  end

  # resources :posts do
  #   resources :comments
  # end
  
  resources :seller_profiles
  # resources :password_resets

  get "/orders", to: 'orders#new'
  get "/orders/:id", to: 'orders#show'
  post "orders/:id", to: 'orders#create'
  patch "orders/:id", to: 'orders#update'

  get "/carted_products", to: 'carted_products#index'
  get "carted_products/:id", to: 'carted_products#show'
  post "/carted_products", to: 'carted_products#create'
  delete "/carted_products/:id", to: 'carted_products#destroy'


  post "/searches", to: 'searches#index'

  get '/searches', to: 'searches#index'

  get "/about", to: 'pages#about'
  get "/contact", to: 'pages#contact'
  get "/challenge", to: 'pages#challenge'

end
