Rails.application.routes.draw do
  namespace :api, {format: 'json'} do
    namespace :v1 do
      
      # root '/' #loading screen

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

        resources :users, only: [:show, :edit, :update, :destroy] do
          member do
            resources :stores, only: [:index, :show] do
              resources :products, only: [:show]
            end
            resources :orders, only: [:index]
          end
        end
      end
    
      namespace :admin do
        # get '/login' => 'sessions#new'
        # post '/login' => 'sessions#create'
        # post '/logout' => 'sessions#destroy'
        resources :admins, only: [:new, :create, :destroy, :show] do
          member do
            resources :stores, only: [:show, :edit, :update] do
              resources :products, only: [:new, :create, :edit, :update]
            end
          end
        end
      end
    end
  end
end
