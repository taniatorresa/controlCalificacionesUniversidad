Rails.application.routes.draw do

  resources :student_has_subjects do
    collection do
      get 'get_subjects'
      get 'get_group'
    end
  end
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

  root 'home#index'

end
