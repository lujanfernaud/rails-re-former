Rails.application.routes.draw do
  root 'users#index'

  resources :users, only: [:index, :new, :show, :create, :edit, :update]
end
