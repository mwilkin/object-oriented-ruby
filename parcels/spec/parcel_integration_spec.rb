require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcel path', {:type => :feature}) do
  it('taking user input for height, length, width and weight and returning a volume') do
    visit('/')
    fill_in('height', :with => 10)
    fill_in('length', :with => 4)
    fill_in('width', :with => 2)
    fill_in('weight', :with => 1)
    click_button('Send')
    expect(page).to have_content(80)
  end
end
