# As two Players,
# So we can continue our game of Battle,
# We want to switch turns

feature 'Players switch turn' do
  scenario "player two's turn" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Attack'
    expect(page).to have_content 'Mittens attacks Dave'
  end
end

