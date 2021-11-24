Rails.application.routes.draw do
  namespace :api, {format: 'json'} do
    namespace :v1 do
      
      # root '/' #loading screen
      resources :users, only: [:new, :create]
      resources :admins, only: [:new, :create]
      resources :stores, only: [:index, :show] do
        collection do
          get :store_search
        end
        member do
          resources :products, only: [:show]
        end
      end

      namespace :user do
        # get '/login' => 'sessions#new'
        # post '/login' => 'sessions#create'
        # post '/logout' => 'sessions#destroy'
        # get 'auth/facebook/callback', to: 'sessions#facebook_auth'
        # get 'auth/google_oauth2/callback', to: 'sessions#google_auth'
        # get 'auth/failure', to: redirect('/login')

        resources :users, only: [:show, :edit, :update]
        resources :stores, only: [:index, :show] do
          resources :products, only: [:show]
        end
        resources :orders, only: [:index]
        
      end
    
      namespace :admin do
        # get '/login' => 'sessions#new'
        # post '/login' => 'sessions#create'
        # post '/logout' => 'sessions#destroy'
        resources :admins, only: [:show, :edit, :update]
        resources :stores, only: [:index, :show, :edit, :update] do
          resources :products, only: [:new, :create, :edit, :update, :destroy]
        end
      end

    end
  end
end
