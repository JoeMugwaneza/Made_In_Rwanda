Rails.application.routes.draw do
  root 'products#index'
  
  resources :products
  # get "products", to: 'products#index'
  # get "products/new", to: 'products#new'
  # get "products/:id/edit", to: 'products#edit'
  # post "products", to: 'products#create'
  # get "products/:id", to: 'products#show'
  # patch "products/:id/edit", to: 'products#update'

  resources :posts do
    resources :comments
  end

  # get "/seller_profiles", to: 'seller_profiles#index'
  # get "/seller_profiles/new", to: 'seller_profiles#new'
  # get "/seller_profiles/:id", to: 'seller_profiles#show'
  # post "/seller_profiles/:id", to: 'seller_profiles#create'
  
  resources :seller_profiles
  resources :password_resets
  

  get "/users", to: 'users#index'
  get "/signup", to: 'users#new'
  post "/users", to: 'users#create'

  get "/login", to: 'sessions#new'
  post "/login", to: 'sessions#create'
  delete "/logout", to: 'sessions#destroy'

  get "/orders", to: 'orders#new'
  get "/orders/:id", to: 'orders#show'
  post "orders/:id", to: 'orders#create'
  patch "orders/:id", to: 'orders#update'

  get "/carted_products", to: 'carted_products#index'
  get "carted_products/:id", to: 'carted_products#show'
  post "/carted_products", to: 'carted_products#create'
  delete "/carted_products/:id", to: 'carted_products#destroy'


  post "/searches", to: 'searches#index'

  get "/about", to: 'pages#about'
  get "/contact", to: 'pages#contact'
  get "/challenge", to: 'pages#challenge'

end
