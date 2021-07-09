class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    attributes = [:first_name, :last_name, :middle_name]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end

  # create authenticate methods filter by user roles
  User.roles.each do |role|
    role_name = role[0]
    define_method("authenticate_#{role_name}") do
      unless user_signed_in? && (current_user.send("#{role_name}?") || current_user.admin?)
        flash[:alert] = 'Ошибка доступа!'
        redirect_to root_path
      end
    end
  end
end
