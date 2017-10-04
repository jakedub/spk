Rails.application.routes.draw do

  root 'products#index'


  post '/login' => 'users#login'

  get '/carts/products/:id' => 'carts#add', as: :add

  scope '/api' do
    resources :guests
    resources :users
    resources :products
    resources :line_items
    resources :carts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
