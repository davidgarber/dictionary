require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the word path', {:type => :feature}) do
  it('adds a word and returns success') do
    visit('/word/new')
    fill_in('Word:', :with => 'cow')
    click_button('Add word')
    expect(page).to have_content('Success!')
  end
end
