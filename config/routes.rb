Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root to: "posts#index"
  resources :posts, only: [:index, :new, :create]
end
