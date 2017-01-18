def sign_in_and_play
	visit('/')
    fill_in :player1_name, with: 'Dave'
    fill_in :player2_name, with: 'Mittens'
    click_button 'Submit'
end