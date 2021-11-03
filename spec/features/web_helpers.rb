def sign_in_and_play
  visit('/')
  fill_in 'name_1', with: 'Sydney'
  fill_in 'name_2', with: 'Millie'
  click_button 'Submit'
end