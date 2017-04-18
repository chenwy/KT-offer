module ApplicationHelper

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

  def render_date_format(date)
    date.to_formatted_s(:db)
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
