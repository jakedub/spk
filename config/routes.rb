Rails.application.routes.draw do
  resources :line_items
  root 'products#index'
  resources :carts

  post '/login' => 'users#login'

  get '/carts/products/:id' => 'carts#add', as: :add
  resources :guests
  resources :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
