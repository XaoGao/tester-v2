Given('I logged and exist a active department') do
  new_session(role: User.roles[:hr])
  @department = FactoryBot.create(:department, lock: false)
end

When('I click a toggle button in department') do
  visit departments_path
  click_on "department-toggle-#{@department.id}"
end

Then('I should see lock status in department') do
  expect(page).to have_content(@department.status)
end
