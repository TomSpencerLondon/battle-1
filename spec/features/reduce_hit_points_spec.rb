# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10
feature "Attack player 2" do
  scenario 'Reduce Player 2 hit points' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Mittens has 90 hit points'
  end
end
