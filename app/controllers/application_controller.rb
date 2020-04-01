class ApplicationController < ActionController::Base
  # following lines allow us to add photos to our profile, as well as some other custom fields such as first and last name
  before_action :configure_devise, if: :devise_controller?

  private 

  def configure_devise
    devise_parameter_sanitizer.permit(:account_update, keys: [ :first_name, :last_name, :username, images: [] ])
  end
end
