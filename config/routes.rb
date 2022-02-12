Rails.application.routes.draw do
  root :to => 'top#index'
  resources :users
  resources :top, only: %i[index]

  get 'login' => 'user_sessions#new', :as => :login
  post 'login' => "user_sessions#create"
  post 'logout' => 'user_sessions#destroy', :as => :logout

end
