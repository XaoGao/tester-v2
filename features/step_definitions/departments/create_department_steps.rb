Given('Loggin as hr and visist a new department path') do
  new_session(role: User.roles[:hr])
end

When('I fill in a new department form and click save') do
  visit new_department_path
  fill_in 'department-name',	with: 'example'
  fill_in 'department-level',	with: '0'
  click_on 'department-submit'
end

Then('I should see a new department in table') do
  expect(page).to have_content('example')
end
