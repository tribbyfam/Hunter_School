class Course < ApplicationRecord
  has_many :cohorts
  validates_presence_of :name, :hours

  scope :courses_for, ->(user) { where(user_id: user.id) } 
end
