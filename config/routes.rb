Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'

  get 'dashboard', to: 'dashboard#index'
  resources :profiles, only: :update

  resources :boats do
    resources :bookings, only: [ :new, :create ]
    resources :reviews, only: [ :new, :create ]
  end

  resources :bookings, only: [ :show ]

end
