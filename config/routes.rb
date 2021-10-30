Rails.application.routes.draw do
  root to: 'events#index'
  resources :events
  devise_for :users
  resources :users, only: [:show]
  resources :event_attendances, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
