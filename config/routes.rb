Rails.application.routes.draw do
  devise_for :users 
  get 'dashboard/index'
  root 'dashboard#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'assignment/index'
  get 'assignment/new'
  get 'rider/index'
  get 'rider/new'
  get 'report/index'
  get 'report/index2'
end
