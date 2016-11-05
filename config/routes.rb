Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/search/find', to: 'search#find'
  get '/search', to: 'search#index'
  root 'welcome#index'
  resources :companies do
    resources :recrutations do
      resources :notifications
      end
  end
  get 'accept_notification/:id', to: 'notifications#accept_notification'
  get 'refuse_notification/:id', to: 'notifications#refuse_notification'
  resources :messages
  devise_for :users, controllers: { registrations: "registrations" }
  resources :jobs
  resources :users, only: [:show, :index]
  mount ActionCable.server, at: '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
