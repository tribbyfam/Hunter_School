require 'rails_helper'

describe 'navigate' do
  # before do
  #   user = User.create(email: "anna2@anna.com", password: "123123", password_confirmation: "123123", first_name: "Anna", last_name: "Trebby", age: "33", education: "MS")
  #   login_as(user, :scope => :user)
  # end

  describe 'index' do
    before do
      visit courses_path
    end
  
    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'has a title of courses' do
      expect(page).to have_content(/courses/)
    end

    # it 'has a list of courses' do
    #   course1 = Course.create(name: "SEI1", hours: "35")
    #   course2 = Course.create(name: "SEI2", hours: "35")
    #   expect(page).to have_content(/course1|course2/)
    
    # end
  end

  describe 'creation' do
    before do
      visit new_course_path
    end

    it 'has a new form that could be reached' do
      expect(page.status_code).to eq(200)
    end

    # it 'can be created from form page' do
    #   fill_in '[name]', with: "SEI"
    #   fill_in '[hours]', with: "40"
    #   click_on "Save"

    #   expect(page).to have_content("SEI")
    # end

    # it 'will have a user associated with it' do
    #   fill_in '[name]', with: "SEI"
    #   fill_in '[hours]', with: "40"
    #   click_on "Save"

    #   expect(User.last.course.last.name).to eq("SEI")
    #   expect(User.last.course.last.hours).to eq("40")
    # end
  end
end