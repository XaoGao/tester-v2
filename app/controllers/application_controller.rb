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
    unless user_signed_in? && (current_user.hr? || current_user.admin?)
      flash[:alert] = 'Ошибка доступа!'
      redirect_to root_path
    end
  end

  def authenticate_doctor
    user_signed_in? && (current_user.doctor? || current_user.admin?)
  end

  def authenticate_registrator
    user_signed_in? && (current_user.registrator? || current_user.admin?)
  end

  def authenticate_admin
    user_signed_in? && current_user.admin?
  end
end
