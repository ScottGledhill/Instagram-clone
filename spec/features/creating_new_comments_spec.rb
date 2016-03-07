require 'rails_helper'

feature 'Creating Comments' do
  scenario 'can comment on an existing post', js: true do
    add_pic
    find('[type=text]').set 'I AM STUPID'
    find('[type=text]').native.send_keys(:return)
    expect(page).to have_css("div.comments#{post.id}", text: 'I AM STUPID')
  end
end
