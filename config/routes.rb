Rails.application.routes.draw do
  resources :cohorts
  resources :courses
  devise_for :users, skip: [:registration]
  root to: 'static#homepage'
  
end
