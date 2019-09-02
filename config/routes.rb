Rails.application.routes.draw do
  root 'items#index'
  resources :items
  resources :carts
  resources :orders
  resources :join_table_cart_items
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
