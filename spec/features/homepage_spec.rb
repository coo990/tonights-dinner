# frozen_string_literal: true

require 'rails_helper'

feature 'Tonights Dinner' do
  scenario 'shows the page header' do
    visit('/')
    expect(page).to have_content("Tonight's Dinner")
  end

  scenario 'clicks ADD button' do
    visit('/')
    click_link 'ADD +'
    expect(page).to have_content('What did you have tonight?')
  end

  scenario 'contains page links' do
    visit('/')
    page.has_link?('true')
  end
end
