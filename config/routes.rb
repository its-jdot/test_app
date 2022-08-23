Rails.application.routes.draw do

  get 'test/index'
  get 'test/new'
  
  get 'question/assign_score'

  resources :choices
  resources :questions
  resources :users

  root 'home#index'
  get 'home/index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
