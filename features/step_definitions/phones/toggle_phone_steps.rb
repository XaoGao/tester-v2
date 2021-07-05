Given('I logged and exist a active phone') do
  new_session(role: User.roles[:hr])
  @phone = FactoryBot.create(:phone, lock: false)
end

When('I click a toggle button in phone') do
  visit phones_path
  click_on "phone-toggle-#{@phone.id}"
end

Then('I should see lock status in phone') do
  expect(page).to have_content(@phone.status)
end
