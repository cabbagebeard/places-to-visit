Rails.application.routes.draw do
  resources :posts
  root 'home#index'
  get 'about', to: 'home#about'
end
