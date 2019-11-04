Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch '/', to:'pokemon#capture', as:'capture'
  patch '/pokemon/:id/damage', to:'pokemon#damage', as:'damage'
  get 'new', to: 'pokemon#new', as: 'new'
  post 'create', to: 'pokemon#create', as: 'create'

end
