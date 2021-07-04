Given('I loggin and exit a department') do
  new_session(role: User.roles[:hr])
  @department = FactoryBot.create(:department, name: 'before')
end

When('I change filed value and submit form for deaprtment') do
  visit edit_department_path(@department)
  fill_in 'department-name',	with: 'after'
  click_on 'department-submit'
end

Then('I should see a updated department') do
  expect(page).to have_content('after')
end
