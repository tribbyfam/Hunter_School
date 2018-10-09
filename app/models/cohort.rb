class Cohort < ApplicationRecord
  has_many :users
  has_one :instructor, -> { where(type: 'Instructor') }, :class_name => "User"
  
end
