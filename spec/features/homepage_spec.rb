require 'rails_helper'

feature 'Tonights Dinner' do
  scenario 'shows the page header' do
    visit('/')
    expect(page).to have_content("Tonight's Dinner")
  end

  scenario 'contains link to Pizza' do
    visit('/')
    page.has_link?(true)
  end
end