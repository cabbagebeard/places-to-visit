Rails.application.routes.draw do
  devise_for :admins, controllers: { registrations: "registrations"}
  resources :posts
  root to: 'home#index'
  get 'about', to: 'home#about'
end
