Rails.application.routes.draw do
  root to: 'pages#index'
  resources :page, only: [:index]
end
