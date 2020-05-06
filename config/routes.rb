Rails.application.routes.draw do
  resources :riders
  devise_for :users 
  get 'dashboard/index'
  root 'dashboard#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'assignment/index'
  get 'assignment/index2'
  get 'rider/index'
  get 'rider/index2'
  get 'report/index'
  get 'report/index2'
end
