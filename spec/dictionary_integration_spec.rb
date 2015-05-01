require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Dictionary App', {:type => :feature}) do
  it('takes in words and definitions and adds them to the Dictionary App') do
    visit('/')
    fill_in("word", :with => "Apple")
    click_button('Add to Dictionary')
    expect(page).to have_content("Apple")
  end
end
