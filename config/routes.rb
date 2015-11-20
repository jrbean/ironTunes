Rails.application.routes.draw do
  devise_for :users

  resources :votes, only: [:create, :destroy]
  resources :vetos, only: [:create, :destroy]
  resources :songs
  end
