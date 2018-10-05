require 'rails_helper'

RSpec.describe Course, type: :model do
  describe "Creation" do
  	before do
  		@course = Course.create(name: "SEI", hours: "35")
  	end

  	# it 'can be created' do	
  	# 	expect(@course).to be_valid
  	# end

  	it 'cannot be created without a name' do
			@course.name = nil
			@course.hours = nil
  		expect(@course).to_not be_valid
  	end
  end
end
