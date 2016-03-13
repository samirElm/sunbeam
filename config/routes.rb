Rails.application.routes.draw do
  devise_for :refugees
  devise_for :users

  resources :projects

  namespace :users do
    resources :projects, only: [:index]
  end
end
