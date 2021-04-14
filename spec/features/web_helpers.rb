def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Yohann'
  fill_in :player_2_name, with: 'Abdur'
  click_button 'Submit'
  expect(page).to have_content 'Yohann vs Abdur'
end