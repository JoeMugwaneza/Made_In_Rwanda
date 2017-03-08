Rails.application.routes.draw do
  resources :products
  resources :posts do
    resources :comments
  end

  root 'products#index'
  get "/images", to:'images#index'
  get "/images/new", to: 'images#new'
  post "/images", to:'images#create'
  delete "/images/", to: 'images#destroy'

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
  post "/carted_products", to: 'carted_products#create'
  delete "/carted_products/:id", to: 'carted_products#destroy'
end
