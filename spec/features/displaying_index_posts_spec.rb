require 'rails_helper'

feature 'Index displays a list of posts' do
  scenario 'the index displays correct created job information' do
    sign_up
    add_pic_without_sign_up
    expect(page).to have_css("img[src*='coffee.jpg']")
  end
end
