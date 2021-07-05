Given('I logged i see a phone') do
  new_session(role: User.roles[:hr])
  @phone = FactoryBot.create(:phone)
end

When('I click destory phone') do
  visit phones_path
  click_on "phone-destroy-#{@phone.id}"
end

Then('I should not see the phone') do
  expect(page).to_not have_content(@phone.number)
end
