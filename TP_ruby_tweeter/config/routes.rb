Rails.application.routes.draw do
  devise_for :users
  resources :homepage, only: [:index, :create] # Bien
  root to: 'homepage#index' # Vu que c'est la toute première route, préférable de la mettre en premier. Pas de sanction, juste conseil.
end
