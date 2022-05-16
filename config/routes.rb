Rails.application.routes.draw do
  devise_for :users
  root to: "flowers#index"
  resources :users, only: [:edit, :update]
end
