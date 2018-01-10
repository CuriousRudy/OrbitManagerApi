Rails.application.routes.draw do
  resources :notifications
  namespace :api do
    namespace :v1 do
      resources :forums
      resources :messages
      resources :memberships
      resources :clans
      resources :users
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
