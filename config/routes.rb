Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root to: 'pages#home'

    get 'faqs', to: 'pages#faqs'
    get 'account', to: 'users#account'

    resources :trips, only: %i[new create update index destroy]
end
