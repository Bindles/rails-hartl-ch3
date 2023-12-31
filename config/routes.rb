Rails.application.routes.draw do
  get 'users/Users'
  get 'users/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root 'pages#index'
  get 'a', to: 'pages#index'
  get 'index', to: 'pages#index'
  get 'home', to: 'pages#index'
  get 'about', to: 'pages#about' #, as: my_about_path
  get 'help' => 'pages/help'
  get 'contact' => 'pages#contact'
  get 'signup' => 'users#new'
  resources :users, param: :name
end
