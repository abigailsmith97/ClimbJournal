require 'rails_helper'

RSpec.feature 'Login', type: :feature do
    scenario 'User logs in with valid credentials' do
      # Create a user and save it to the database
      user = User.create(email: 'test@example.com', password: 'password123')
      
      # Visit the login page
      visit new_user_session_path
  
      # Fill in the email and password fields
      fill_in 'Email', with: 'test@example.com'
      fill_in 'Password', with: 'password123'
  
      # Click the "Log in" button
      click_button 'Log in'
  
      # Expect to see a success message
      expect(page).to have_text('Signed in successfully')
    end
  end