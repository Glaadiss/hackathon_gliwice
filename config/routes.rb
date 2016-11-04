Rails.application.routes.draw do
  root 'welcome#index'
  resources :recrutations do
    resources :companies do
      resources :notifications
    end
  end
  resources :messages
  devise_for :users
  resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
