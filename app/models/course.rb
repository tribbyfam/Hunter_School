class Course < ApplicationRecord
  # has_many :cohorts
  validates_presence_of :name, :hours
end
