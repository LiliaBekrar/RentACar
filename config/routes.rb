Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/confirm'
  get 'bookings/create'
  get 'bookings/index'
  devise_for :users
  root to: 'pages#home'
  get 'profil', to: 'pages#profil'
  resources :cars, only: [:index, :edit, :update, :show, :new, :create, :destroy] do
    resources :bookings, only: [:new, :create]
    collection do
      get :my_cars
    end
  end
  resources :bookings, only: [:show] do
    member do
      get :confirm
    end
  end
end
