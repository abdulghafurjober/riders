Rails.application.routes.draw do
  devise_for :users 
  root 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :riders
  resources :assignments
  resources :requests
  resources :payments
  

  post '/payment/callback', to: 'payments#callback', as: 'callback'
  get '/payment/success', to: 'payments#success', as: :payment_success
  get '/riders/coverage/:area', to: 'riders#size', as: 'rider_size'
  get '/order', to: 'homes#order' 
  get '/job/:unique_code', to: 'homes#job'
  get '/tracking', to: 'homes#tracking' 
  get '/dashboard', to: 'dashboard#index'
 
end
