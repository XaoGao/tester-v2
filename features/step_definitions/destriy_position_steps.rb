Given('I logged i see a position') do
  new_session(role: User.roles[:hr])
  @position = FactoryBot.create(:position)
end

When('I click destory position') do
  click_on 'position-destroy'
end

Then('I should not see the position') do
  expect(page).to_not have_content(@position.name)
end
