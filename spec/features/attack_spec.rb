feature 'attack' do
	it 'player 1 can attack player 2' do
		sign_in_and_play
		click_link 'attack!'
		expect(page).to have_content 'Ouch, nice hit!'
	end
end
