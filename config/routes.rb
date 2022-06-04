Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'profile', to: 'pages#profile'
  resources :trails, only: %i[index show] do
    resources :hikes, only: %i[create]
    resources :pins, only: %i[index]
    resources :reviews, only: %i[create]
    resources :favorites, only: %i[create]
  end
  resources :hikes, only: %i[show update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
