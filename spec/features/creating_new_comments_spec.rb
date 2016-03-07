require 'rails_helper'

feature 'Creating Comments' do
  scenario 'can comment on an existing post' do
    add_pic
    find('[type=text]').set 'I AM STUPID'
    expect(page).to have_css ('[type=text]')
  end
end
