require 'rails_helper'

feature 'Visit the gitbranch testing & image uploader page' do 
  scenario 'Upload Image' do 
    visit '/'
    expect(page).to have_content 'Image Uploader'
  end

  scenario 'Upload Successful' do
    visit new_thing_item_path

    fill_in 'Name', :with => 'Jonah'
    click_button 'Create Thing item'
    expect(page).to have_content 'Thing item was successfully created'
    expect(page).to have_content 'Thing'
  end

  scenario 'Show the image'

end