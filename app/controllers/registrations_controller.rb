class RegistrationsController < Devise::RegistrationsController
# before_action :configure_sign_up_params, only: [:create]

  def after_sign_up_path_for(resource)
    new_restaurant_path
  end
end
