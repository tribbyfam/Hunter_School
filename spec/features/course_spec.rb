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
end