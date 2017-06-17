Rails.application.routes.draw do

  resources :experiences
  root 'pages#index'

  resources :contacts

  resources :projects

end
