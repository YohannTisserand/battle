feature 'Enter name' do
  scenario 'Submit names' do
    visit('/')
    fill_in :player_1_name, with: 'Yohann'
    fill_in :player_2_name, with: 'Abdur'
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_content 'Yohann vs Abdur'
  end
end