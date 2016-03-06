require 'rails_helper'

feature 'User authentication' do
  background do
    create(:user)
  end
  scenario 'can log in from the index' do
    visit '/'
    expect(page).to_not have_content('New Post')
    click_link 'Login'
    fill_in 'Email', with: '1@2.3.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    expect(page).to have_content('Signed in, well done on wasting your life')
    expect(page).to_not have_content('Register')
  end

  scenario 'can log out once logged in' do
   visit '/'
   click_link 'Sign up'
   sign_up
   click_button 'Logout'
   expect(page).to have_content('You need to sign in or sign up before continuing.')
 end
end
