feature 'view player health' do
  it 'can show player health' do
    sign_in_and_play
    expect(page).to have_content 'Millie: 60HP'
  end
end
