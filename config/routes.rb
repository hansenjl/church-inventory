Rails.application.routes.draw do
  resources :items
  resources :purposes
  resources :areas
  resources :locations
  resources :users
  resources :churches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
