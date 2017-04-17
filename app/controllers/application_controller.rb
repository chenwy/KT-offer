class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

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
end
