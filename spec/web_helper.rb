
def add_pic
  visit '/'
  sign_up
  click_link 'New Post'
  attach_file('Image', "/Users/ScottGledhill/Desktop/img/coffee.jpg")
  fill_in 'Caption', with: '#COFFEE'
  click_button 'Create Post'
end

def sign_up
  visit '/users/sign_up'
  fill_in 'User name', with: 'STARBURST'
  fill_in 'Email', with: '1@2.3.com'
  fill_in 'Password', with: 'password', match: :first
  fill_in 'Password confirmation', with: 'password'
  click_button 'Sign up'
end

def sign_up_long_name
  visit '/users/sign_up'
  fill_in 'User name', with: 'STARBURSTSTARBURST'
  fill_in 'Email', with: '1@2.3.com'
  fill_in 'Password', with: 'password', match: :first
  fill_in 'Password confirmation', with: 'password'
  click_button 'Sign up'
end

def sign_up_no_name
  visit '/users/sign_up'
  fill_in 'Email', with: '1@2.3.com'
  fill_in 'Password', with: 'password', match: :first
  fill_in 'Password confirmation', with: 'password'
  click_button 'Sign up'
end

def add_pic_without_sign_up
  visit '/'
  click_link 'New Post'
  attach_file('Image', "/Users/ScottGledhill/Desktop/img/coffee.jpg")
  fill_in 'Caption', with: '#COFFEE'
  click_button 'Create Post'
end
