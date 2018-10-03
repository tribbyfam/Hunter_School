class Course < ApplicationRecord
  belongs_to :instructor
  validates_presence_of :name
end
