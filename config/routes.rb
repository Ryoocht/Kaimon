Rails.application.routes.draw do
  resources :admins
  resources :admin_stores
  resources :holidays
  resources :stores
  resources :product_orders
  resources :orders
  resources :categories
  resources :products
  resources :comments
  resources :states
  resources :addresses
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
