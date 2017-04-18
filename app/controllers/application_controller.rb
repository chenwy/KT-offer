class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_devise_permitted_parameters, if: :devise_controller?

  def render_user_role(user, role)
    case role
      when "admin"
        user.user_role == 1
      when "HR"
        user.user_role == 2
      else
        user.user_role == 3
    end
  end

  protected

  def configure_devise_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_role, :username])
  end
end
