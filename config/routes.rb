Rails.application.routes.draw do
  resources :cohorts
  resources :courses
  devise_for :users
  root to: 'static#homepage'
  
end
