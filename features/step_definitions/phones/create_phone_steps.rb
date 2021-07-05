Given('Logged as hr and visit phones index') do
  new_session(role: User.roles[:hr])
end

When('I fill in a new phone form and click save') do
  visit new_phone_path
  fill_in 'phone-number',	with: '52525'
  click_on 'phone-submit'
end

Then('I should see a new phone in table') do
  expect(page).to have_content('52525')
end
