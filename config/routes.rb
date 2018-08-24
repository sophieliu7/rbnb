Rails.application.routes.draw do

  get 'reviews/new'
  get 'reviews/create'
  resources :tools do
    resources :reservations
    resources :reviews, only: [:new, :create]
  end

  get "dashboard", to: 'pages#dashboard'
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
