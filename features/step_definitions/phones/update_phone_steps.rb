Given('I loggin and exit a phone') do
  new_session(role: User.roles[:hr])
  @phone = FactoryBot.create(:phone, number: '545454')
end

When('I change filed value and submit form for update phone') do
  visit edit_phone_path(@phone)
  fill_in 'phone-number',	with: '111111'
  click_on 'phone-submit'
end

Then('I should see a updated phone') do
  expect(page).to have_content('111111')
end
