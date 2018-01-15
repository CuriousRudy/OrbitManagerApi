Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :forums
      resources :messages
      resources :memberships
      resources :clans
      resources :users
      resources :characters
      resources :notifications
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
