feature 'attack' do
	it 'player 1 can attack player 2' do
		sign_in_and_play
		click_link 'attack!'
		expect(page).to have_content 'Ouch, nice hit!'
	end

	it 'reduces HP by 10' do
		sign_in_and_play
		click_link 'attack!'
		click_link 'back to battle'
		expect(page).to have_content 'Millie: 50HP'
	end
end