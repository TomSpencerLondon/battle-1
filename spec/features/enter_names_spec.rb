# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our Names and seeing them

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player1_name, with: 'Dave'
    fill_in :player2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Dave vs. Mittens'
  end
end
