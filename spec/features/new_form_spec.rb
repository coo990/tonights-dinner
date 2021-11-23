# frozen_string_literal: true

require 'rails_helper'

feature 'Form' do
  scenario 'shows the form header' do
    visit('/food/new')
    expect(page).to have_content('New Dinner')
  end

  scenario 'shows the text field' do
    visit('/food/new')
    page.has_field?(true)
  end

  scenario 'Displays text field header' do
    visit('/food/new')
    expect(page).to have_content('What did you have tonight?')
  end
end
