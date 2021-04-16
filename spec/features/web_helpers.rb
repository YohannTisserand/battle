def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Yohann'
  fill_in :player_2, with: 'Abdur'
  click_button 'Submit'
  expect(page).to have_content 'Yohann vs Abdur'
end