Rails.application.routes.draw do
  resources :home, only: [:index]

  resources :posts
  root 'home#index'
end
