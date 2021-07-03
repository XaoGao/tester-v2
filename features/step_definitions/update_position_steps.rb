Given('I loggin and exit a position') do
  new_session(role: User.roles[:hr])
  @position = FactoryBot.create(:position, name: 'before')
end

When('I change filed value and submit form') do
  visit edit_position_path(@position)
  fill_in 'position-name',	with: 'after'
  click_on 'position-submit'
end

Then('I should see a updated position') do
  expect(page).to have_content('after')
end
