Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :cohorts
      resources :courses
      resources :static
      resources :admin_users
      resources :students
      root to: "users#index"
    end
    
  resources :cohorts
  resources :courses
  resources :static do 
    resources :students
  end 
  devise_for :users, skip: [:registration]
  root to: 'static#homepage'
  
end
