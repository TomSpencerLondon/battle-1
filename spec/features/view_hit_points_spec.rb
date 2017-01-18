# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature "View player 2's hit points" do
  scenario "displays hit points" do
    sign_in_and_play
    expect(page).to have_content 'Mittens has 0 hit points'
  end
end
