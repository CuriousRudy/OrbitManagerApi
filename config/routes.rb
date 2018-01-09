Rails.application.routes.draw do
  resources :forums
  resources :messages
  resources :memberships
  resources :clans
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
