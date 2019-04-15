Rails.application.routes.draw do
  # pre auth:
  # namespace :api do
  #   namespace :v1 do
  #     resources :npcs, only: [:index]
  #     resources :users, only: [:show, :create] do
  #       resources :gamestates, only: [:index, :show, :create, :update]
  #     end
  #   end
  # end

  namespace :api do
    namespace :v1 do
      resources :gamestates, only: [:create, :update]
      resources :users, only: [:create]
      resources :npcs, only: [:index]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
