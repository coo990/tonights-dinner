require 'rails_helper'

feature 'Form' do
  scenario 'shows the form header' do
    visit('/food/new')
    expect(page).to have_content("New Dinner")
  end
end