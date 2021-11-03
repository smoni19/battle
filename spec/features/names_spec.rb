feature 'player names' do
  it 'players can enter their names' do
    sign_in_and_play
    expect(page).to have_content 'Millie'
  end
end
