Given('I logged visit phone book path') do
  new_session
  visit phonebooks_path
end

Then('I see a phonebook') do
  User.enable.each do |user|
    expect(page).to have_content(user.full_name)
  end
end
