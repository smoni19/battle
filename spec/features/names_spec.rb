feature 'player names' do
  it 'players can enter their names' do
    visit('/')
    fill_in 'name_1', with: 'Simon'
    click_button 'Submit'
    expect(page).to have_text 'Simon'
  end
end
