Rails.application.routes.draw do

  resources :student_has_subjects
  devise_for :users
  resources :cycle_has_subjects
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
