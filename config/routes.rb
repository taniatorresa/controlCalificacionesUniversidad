Rails.application.routes.draw do

  resources :student_has_subjects do
    collection do
      get 'get_subjects'
      get 'get_group'
    end
  end
  devise_for :users
  resources :cycle_has_subjects
  resources :presences do
    collection do
      get 'get_subjects'
      get 'get_group'
    end
  end
  resources :scores do
    collection do
      get 'get_subjects'
      get 'get_group'
    end
  end
  resources :students
  resources :groups
  resources :subjects
  resources :teachers
  resources :periods
  resources :school_cycles
  resources :careers
  resources :faculties
  resources :searches

  root 'home#index'

end
