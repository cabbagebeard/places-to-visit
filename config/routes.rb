Rails.application.routes.draw do
  devise_for :admins
  resources :posts
  root to: 'home#index'
  get 'about', to: 'home#about'
end
