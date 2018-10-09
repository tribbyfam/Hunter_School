Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :cohorts
      resources :courses
      resources :admin_users

      root to: "users#index"
    end
    
  resources :cohorts
  resources :courses
  devise_for :users, skip: [:registration]
  root to: 'static#homepage'
  
end
