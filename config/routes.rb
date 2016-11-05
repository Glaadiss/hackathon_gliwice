Rails.application.routes.draw do
  root 'welcome#index'
  resources :companies do
    resources :recrutations do
      resources :notifications
    end
  end
  resources :messages
  devise_for :users, controllers: { registrations: "registrations" }
  resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
