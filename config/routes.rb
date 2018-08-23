Rails.application.routes.draw do

  resources :tools do
    resources :reservations
  end
  resources :users, only: [:show]
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
