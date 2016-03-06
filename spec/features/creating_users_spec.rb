require 'rails_helper'

feature 'User' do
  scenario 'can create a new user via the index page' do
    sign_up
    expect(page).to have_content('Welcome to hell..')
  end

  scenario 'requires a user name to successfully create an account' do
    sign_up_no_name
    expect(page).to have_content("can't be blank")
  end

  scenario 'requires a user name to be less than 16 characters' do
    sign_up_long_name
    expect(page).to have_content("maximum is 16 characters")
  end
end
