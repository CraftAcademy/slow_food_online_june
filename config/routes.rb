Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: :registrations,
                                   sessions: :sessions}

  resources :restaurants, only: [:new, :create]
  root controller: :landing, action: :index
  resources :menus, only: [:new, :create]
end
