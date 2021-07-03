def new_session(role: nil)
  user = FactoryBot.create(:user, email: 'test@test.com', password: 'password', role: role)
  visit '/users/sign_in'
  fill_in 'user_email',	with: 'test@test.com'
  fill_in 'user_password',	with: 'password'
  click_on 'user_signin_submit'
  user
end

def new_session_of_user(email, password)
  visit '/users/sign_in'
  fill_in 'user_email',	with: email
  fill_in 'user_password',	with: password
  click_on 'user_signin_submit'
end
