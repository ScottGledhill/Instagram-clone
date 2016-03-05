require 'rails_helper'

feature 'Index displays a list of posts' do
scenario 'the index displays correct created job information' do
  create(:post, caption: "This is post one")
  create(:post, caption: "This is the second post")

  visit '/'
  expect(page).to have_content("This is post one")
  expect(page).to have_content("This is the second post")
  expect(page).to have_css("img[src*='coffee.jpg']")
end
end
