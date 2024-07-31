Rails.application.routes.draw do
  # get 'sellers/index'
  # get 'sellers/show'
  # get 'sellers/new'
  # get 'sellers/edit'
  # get 'admins/index'
  # get 'admins/show'
  # get 'admins/new'
  # get 'admins/edit'
  # get 'buyers/index'
  # get 'buyers/show'
  # get 'buyers/new'
  # get 'buyers/edit'
  
  # root to: 'buyers#index', as: :buyer_root # Your existing Buyers controller
  # root to: 'admins#index', as: :admin_root
  get 'admins', to: 'admins#index'
  get 'sellers', to: 'sellers#index'
  get 'buyers', to: 'buyers#index'

  get 'home/index'



  # devise_for :users, controllers: { registrations: 'users/registrations' }
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root to:"home#index"

  # Defines the root path route ("/")
  # root "posts#index"
end
