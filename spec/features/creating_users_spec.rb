require 'rails_helper'

  feature 'User' do
    scenario 'can create a new user via the index page' do
      visit '/users/sign_up'
      fill_in 'User name', with: 'STARBURST'
      fill_in 'Email', with: '1@2.3.com'
      fill_in 'Password', with: 'password', match: :first
      fill_in 'Password confirmation', with: 'password'
      click_button 'Sign up'
      expect(page).to have_content('Welcome to hell..')
    end

    scenario 'requires a user name to successfully create an account' do
      fill_in 'Email', with: '1@2.3.com'
      fill_in 'Password', with: 'password', match: :first
      fill_in 'Password confirmation', with: 'password'
      click_button 'Sign up'
      expect(page).to have_content("can't be blank")
    end
end
