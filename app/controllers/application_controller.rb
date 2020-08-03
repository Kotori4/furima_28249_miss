class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_paramerters, if: :devise_controller?

  protected

  def configure_permitted_paramerters
    devise_parameter_sanitizer.permit(:sign_up, key: [:name])
  end
end
