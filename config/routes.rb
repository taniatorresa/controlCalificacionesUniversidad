Rails.application.routes.draw do
  devise_for :users
  resources :presences
  resources :scores
  resources :students
  resources :groups
  resources :subjects
  resources :teachers
  resources :periods
  resources :school_cycles
  resources :careers
  resources :faculties
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/index'
  root 'home#index'
end
