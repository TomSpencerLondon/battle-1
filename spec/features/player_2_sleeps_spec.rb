feature 'Snooze' do
  scenario 'Player 1 snoozes Player 2' do
    sign_in_and_play
    click_button 'Sleep'
    expect(page).to have_content "Dave snoozes Mittens"
  end
end
