Rails.application.routes.draw do
  resources :carts
  resources :guests
  resources :users
  resources :products
  resources :categories
  resources :products do
    resources :categories
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
