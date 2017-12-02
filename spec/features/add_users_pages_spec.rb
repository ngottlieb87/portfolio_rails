require 'rails_helper'

describe 'create new user process' do
  it 'create a new user' do
    visit signup_path
    click_on 'Sign Up'
    expect(page).to have_content "There was a problem signing up."
    visit signup_path
    fill_in 'user_email', :with => 'test@test.com'
    fill_in 'user_password', :with => 'password'
    fill_in 'user_password_confirmation', :with => 'password'
    fill_in 'user_user_name', :with => 'test'
    click_on "sign_up_button"
    expect(page).to have_content "You've successfully signed up!"
  end
end
