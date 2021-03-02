Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/account'
  devise_for :users
  resources :mentors do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: [ :index, :destroy, :update, :edit ]
  resource :dashboard, only: [ :show ]
end
