class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    attributes = [:first_name, :last_name, :middle_name]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end

  def authenticate_hr
    authenticate_by_role(:hr)
  end

  def authenticate_doctor
    authenticate_by_role(:doctor)
  end

  def authenticate_register
    authenticate_by_role(:register)
  end

  def authenticate_admin
    authenticate_by_role(:admin)
  end

  private

  def authenticate_by_role(role)
    unless user_signed_in? && (current_user.send("#{role}?") || current_user.admin?)
      flash[:alert] = 'Ошибка доступа!'
      redirect_to root_path
    end
  end
end
