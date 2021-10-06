require 'rails_helper'

feature 'Tonights Dinner' do
  scenario 'shows the right content' do
      visit('/')
      expect(page).to have_content("Tonight's Dinner")
    end
end