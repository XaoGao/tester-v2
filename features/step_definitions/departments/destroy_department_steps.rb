Given('I logged i see a department') do
  new_session(role: User.roles[:hr])
  @department = FactoryBot.create(:department)
end

When('I click destory department') do
  visit departments_path
  click_on "department-destroy-#{@department.id}"
end

Then('I should not see the department') do
  expect(page).to_not have_content(@department.name)
end
