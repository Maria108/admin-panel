Rails.application.routes.draw do
  get 'welcome/index'
  resources :users
  resources :students
  resources :masters
  resources :courses
  resources :cohorts

  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
