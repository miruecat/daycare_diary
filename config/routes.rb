Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get '/user' => "children#index", :as => :user_root
  resources :children do
    resources :activities, only: [:index]
  end
  resources :activities, only: [:new, :create, :edit, :update, :destroy]
  resources :daycares
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
