Rails.application.routes.draw do

  resources :tools do
    resources :reservations do
        resources :reviews, only: [:new, :create]
      end
  end

  get "dashboard", to: 'pages#dashboard'
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
