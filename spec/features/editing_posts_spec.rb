require 'rails_helper'

feature 'Editing posts' do
  scenario 'Can edit a post' do
    add_pic
    find('[alt="Coffee"]').click
    click_link 'Edit Post'
    find('[type=text]').set 'I AM STUPID'
    click_button 'Update Post'
    expect(page).to have_content("I AM STUPID")
  end
end
