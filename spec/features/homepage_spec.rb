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

  scenario 'returns flash success after post' do
    visit('/')
    click_link 'ADD +'
    fill_in "food[title]", with: 'Pizza'
    fill_in 'food[body]', with: 'Tasty!'
    click_button 'Save Food'
    expect(page).to have_content "Great! You're food has been added!"
  end
end
