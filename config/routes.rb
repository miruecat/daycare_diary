Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :children do
    resources :activities, only: [:new, :create, :index]
  end
  resources :activities, only: [:new, :create, :edit, :update, :delete]
  resources :daycares

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
