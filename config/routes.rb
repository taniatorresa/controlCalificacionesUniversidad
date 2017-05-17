Rails.application.routes.draw do
  resources :cycle_has_subjects
  get 'period_has_groups/index'

  get 'period_has_groups/new'

  get 'period_has_groups/show'

  get 'period_has_groups/edit'

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
