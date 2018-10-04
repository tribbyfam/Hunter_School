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
      user = User.create(email: "anna2@anna.com", password: "123123", password_confirmation: "123123", first_name: "Anna", last_name: "Trebby")
      login_as(user, :scope => :user)
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

    it 'will have a user associated with it' do
      fill_in '[name]', with: "SEI"
      fill_in '[hours]', with: "40"
      click_on "Save"

      expect(User.last.course.last.name).to eq("SEI")
    end
  end
end