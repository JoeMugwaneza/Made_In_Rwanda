Rails.application.routes.draw do
  root 'products#index'
  
  resources :products
  resources :posts do
    resources :comments
  end

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
