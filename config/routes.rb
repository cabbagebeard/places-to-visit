Rails.application.routes.draw do
  get 'posts/new'

  root 'home#index'
end
