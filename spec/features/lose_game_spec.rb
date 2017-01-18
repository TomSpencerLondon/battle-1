# As a Player,
# So I can Lose a game of Battle,
# I want to see a 'Lose' message if I reach 0HP first

feature "Display lose message" do
  scenario "player 2 looses" do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(100)
    click_button 'Attack'
    expect(page).to have_content 'Mittens has lost the game!'
  end
end
