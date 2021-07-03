Given('I logged and exist a active position') do
  new_session(role: User.roles[:hr])
  @position = FactoryBot.create(:position, lock: false)
end

When('I click a toggle button in position') do
  visit positions_path
  click_on "position-toggle-#{@position.id}"
end

Then('I should see lock status in position') do
  expect(page).to have_content(@position.status)
end
