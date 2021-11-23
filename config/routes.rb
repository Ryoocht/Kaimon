Rails.application.routes.draw do
  namespace :api, {format: 'json'} do
    namespace :v1 do
      # root '/' #loading screen
      # get '/login' => 'sessions#new'
      # post '/login' => 'sessions#create'
      # post '/logout' => 'sessions#destroy'
      # get 'auth/facebook/callback', to: 'sessions#facebook_auth'
      # get 'auth/google_oauth2/callback', to: 'sessions#google_auth'
      # get 'auth/failure', to: redirect('/login')
      # get 'store_near_address' => 'stores#store_search'

      resources :admins
      resources :admin_stores
      resources :holidays
      resources :stores, only: [:index]
      resources :product_orders
      resources :orders
      resources :categories
      resources :products
      resources :comments
      resources :states
      resources :addresses
      resources :users
    end
  end
end
