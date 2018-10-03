require 'rails_helper'

describe 'navigate' do
  describe 'index' do
    if 'can be reached successfully' do
      visit courses_path
      expect(page.status_code).to eq(200)
    end

    if 'has a title of courses' do
      visit courses_path
      expect(page).to have_content(/courses/)
    end
  end

  describe 'creation' do
    before do
      visit new_course_path
    end

    it 'has a new form that could be reached' do
      expect(page.status_code).to eq(200)
    end

    it 'can be created from form page' do
      fill_in '[name]', with: "SEI"
      fill_in '[hours]', with: "40"
      click_on "Save"
      
      expect(page).to have_content("SEI")
    end
  end
end