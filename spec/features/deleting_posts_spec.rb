require 'rails_helper'

feature 'Deleting posts' do
  background do
    create(:post, caption: 'fml')
    visit '/'
    find('[alt="Coffee"]').click
  end

  scenario 'Can delete a single post' do
    click_link 'Delete Post'
    expect(page).to have_content('deleted.')
    expect(page).to_not have_content('fml')
  end
end
