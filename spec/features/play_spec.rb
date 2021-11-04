feature 'view player health' do
  it 'can show player health' do
    sign_in_and_play
    expect(page).to have_content 'Millie: 60HP'
  end

  it 'can show player turn' do
    sign_in_and_play
    expect(page).to have_content 'Sydney\'s turn'
  end
  
  it 'can show player turn' do
    sign_in_and_play
		click_link 'attack!'
		click_link 'back to battle'
    expect(page).to have_content 'Millie\'s turn'
  end
end
