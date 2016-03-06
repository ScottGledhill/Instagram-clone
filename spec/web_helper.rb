
def add_pic
  visit '/'
  click_link 'New Post'
  attach_file('Image', "/Users/ScottGledhill/Desktop/img/coffee.jpg")
  fill_in 'Caption', with: '#COFFEE'
  click_button 'Create Post'
end

def sign_up

end
