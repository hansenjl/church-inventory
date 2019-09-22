Rails.application.routes.draw do
  root 'sessions#index'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'signup' => 'users#new'
  post 'signup' => 'users#create'
  delete 'logout' => 'sessions#destroy'
  resources :items
  resources :purposes
  resources :areas
  resources :locations
  resources :users
  resources :churches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
