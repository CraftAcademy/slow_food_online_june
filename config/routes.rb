Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: :registrations,
                                   sessions: :sessions}

  resources :restaurants, only: [:new, :create, :edit, :update]
  root controller: :landing, action: :index
  resources :menus, only: [:new, :create] do
    resources :dishes, only: [:new, :create]
  end

end
