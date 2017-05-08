Rails.application.routes.draw do
  resources :periods
  resources :school_cycles
  resources :careers
  resources :faculties
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/index'
end
