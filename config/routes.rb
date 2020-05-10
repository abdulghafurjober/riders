Rails.application.routes.draw do
  devise_for :users 
  get 'dashboard/index'
  root 'dashboard#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :assignments
  #get "assignments/new" => "assignments#new"
  get 'rider/index2'

end
