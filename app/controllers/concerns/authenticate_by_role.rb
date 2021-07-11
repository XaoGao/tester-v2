module AuthenticateByRole
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
