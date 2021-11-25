# frozen_string_literal: true

require 'rails_helper'

feature 'Form' do
  scenario 'shows the form header' do
    visit('/')
    click_link 'ADD +'
    expect(page).to have_content('New Dinner')
  end

  scenario 'shows the text field' do
    visit('/')
    click_link 'ADD +'
    page.has_field?('true')
    expect(page).to have_content('What did you have tonight?')
  end
end
