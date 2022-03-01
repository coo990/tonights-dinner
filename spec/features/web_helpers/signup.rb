def signup
  visit('/')
  click_button 'Sign Up'
  fill_in 'Username', with: user.username
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Sign up'
end