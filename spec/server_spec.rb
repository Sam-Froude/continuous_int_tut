require 'capybara/rspec'
require 'sinatra' 
Capybara.app = Sinatra::Application

describe 'home page', type: :feature do
  it 'displays correct text' do
    visit '/'
    expect(page).to have_content('deployed to heroku')
  end
end