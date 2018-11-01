class Cohort < ApplicationRecord
  has_many :cohort_users, dependent: :destroy
  # has_many :instructors, through: :cohort_users
  has_many :users, through: :cohort_users
  has_one :instructor, -> { where(type: 'Instructor') }, :class_name => "User"
  
end
