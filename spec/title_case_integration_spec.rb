require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expeptions, false)

describe('the title case path', {:type => :feature}) do
  it('processes the user entry and returns it to title cased') do
    visit('/')
    fill_in('title', :with => "green eggs and ham")
    click_button('send')
    expect(page).to have_content('Green Eggs and Ham')
  end
end
