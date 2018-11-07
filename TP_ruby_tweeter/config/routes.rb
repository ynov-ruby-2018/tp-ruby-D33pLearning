Rails.application.routes.draw do
  devise_for :users
  resources :homepage, only: [:index, :create]
  root to: 'homepage#index'
end
