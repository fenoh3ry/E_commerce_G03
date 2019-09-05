Rails.application.routes.draw do

  resources :join_table_order_items
  root 'items#index'
  resources :items do
  	resources :pics
  end
  resources :carts
  resources :orders
  resources :join_table_cart_items
  devise_for :users
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
