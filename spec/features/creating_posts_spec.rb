require 'rails_helper.rb'

feature 'Creating posts' do
  scenario 'can create a job' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "/Users/ScottGledhill/Desktop/img/coffee.jpg")
    fill_in 'Caption', with: '#COFFEE'
    click_button 'Create Post'
    expect(page).to have_content('Great, another picture no one cares about')
    expect(page).to have_css("img[src*='coffee.jpg']")
  end

  it 'needs an image to create a post' do
    visit '/'
    click_link 'New Post'
    fill_in 'Caption', with: "I HATE INSTAGRAM"
    click_button 'Create Post'
    expect(page).to have_content('WHAT IS THIS WORLD? NO PICTURE?')
  end
end
