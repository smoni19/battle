require "./app"

RSpec.feature "Homepage text", :type => :feature do
  scenario "Homepage text is 'Testing infrastructure working!'" do
    visit "/"
    expect(page).to have_text('Testing infrastructure working!')
  end
end