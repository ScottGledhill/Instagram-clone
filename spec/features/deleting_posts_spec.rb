require 'rails_helper'

feature 'Deleting posts' do

  scenario 'Can delete a single post' do
    add_pic
    find('[alt="Coffee"]').click
    click_link 'Update Post'
    click_button 'Delete Post'
    expect(page).to have_content('deleted')
    expect(page).to_not have_content('fml')
  end
end
