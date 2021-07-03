Given('Loggin as hr') do
  new_session(role: User.roles[:hr])
end

When('I fill in form and click save') do
  visit new_position_path
  fill_in 'position-name',	with: 'example'
  fill_in 'position-level',	with: '0'
  click_on 'position-submit'
end

Then('I should see a new position in table') do
  expect(page).to have_content('example')
end
