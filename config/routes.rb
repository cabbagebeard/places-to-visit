Rails.application.routes.draw do
  get 'posts/new'
  get 'home/index'
  root 'home#index'
end
