Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root to: 'pages#home'

  get 'dashboard', to: 'dashboard#index'
  resources :profiles, only: :update

  resources :cars do
    resources :bookings, only: [ :new, :create, :update, :edit, :destroy ]
  end

  resources :bookings, only: [ :show ]
end
