feature 'Poison' do
  scenario 'Player 1 poisons Player 2' do
    sign_in_and_play
    click_button 'Poison'
    expect(page).to have_content "Dave poisons Mittens"
  end
end
