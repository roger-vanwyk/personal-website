Rails.application.routes.draw do
  root 'pages#index'

  resources :contacts
  resources :projects
  resources :experiences
  resources :information, only: [:index, :edit, :update]
end
