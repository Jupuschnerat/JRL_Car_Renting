Rails.application.routes.draw do
  devise_for :users
  # get 'pages/home'
  resources :cars do
    resources :bookings, only: :create
  end

  # Additional routes for user's bookings
  # resources :bookings, only: [:edit, :update, :destroy]

  root to: 'pages#home'

  get 'my_cars', to: 'cars#my_cars'
  get 'my_cars/:id', to: 'cars#my_cars_show', as: :my_car
end
