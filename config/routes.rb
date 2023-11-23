Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root to: 'pages#home'
  resources :profiles, only: :update
  resources :cars, only: [:edit, :update, :new, :create, :destroy] do
    resources :bookings, only: [:create, :new]
  end
  resources :cars, only: [:index, :show]
  resources :bookings, only: [:edit, :update, :destroy]
  get 'my_cars', to: 'cars#my_cars'
  get 'my_cars/:id', to: 'cars#my_cars_show', as: :my_car
end
