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
      resources :stores, only: [:index, :show] do
        collection do
          get :store_search
        end
        member do
          resources :products, only: [:show]
        end
      end


      resources :admins
      resources :admin_stores
      resources :holidays
      resources :product_orders
      resources :orders
      resources :categories
      
      resources :comments
      resources :states
      resources :addresses
      resources :users
    end
  end
end
