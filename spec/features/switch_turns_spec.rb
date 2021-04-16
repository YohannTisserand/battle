feature 'switch turns' do
  context 'see the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content 'Yohann turn'
    end

    scenario 'after players 1 attacks' do
      sign_in_and_play
      click_link 'Attack'
      click_link 'OK'
      expect(page).not_to have_content 'Yohann turn'
      expect(page).to have_content 'Abdur turn'
    end
  end
end