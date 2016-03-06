require 'rails_helper'

feature 'Creating Comments' do
  scenario 'can comment on an existing post' do
    sign_up
    visit '/'
    fill_in 'Add a Comment...', with: 'terrible pic'
    expect(page).to have_css("div.comments#{post.id}", text: 'terrible pic')
  end
end
