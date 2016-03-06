require 'rails_helper'

  scenario 'can create a new user via the index page' do
    fill_in 'User name', with: 'STARBURST'
    fill_in 'Email', with: '1@2.3.com'
    fill_in 'Password', with: 'password', match: :first
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign up'
    expect(page).to have_content('Welcome to hell..')
  end
end
