require 'rails_helper'

feature 'Visit the gitbranch testing page' do 
  scenario 'Git Branch test' do 
    visit root_path
    expect(page).to have_content 'git branch'
  end
end