Rails.application.routes.draw do
  devise_for :users

  resources :friendships
  resources :users, only: [:index]

  resources :conversations, only: [:index, :create] do
  	resources :messages
  end

  root to: "friendships#index"

end
