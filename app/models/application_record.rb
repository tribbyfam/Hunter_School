class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  scope :instructor, -> { where role: 'instructor' }
  scope :student, -> { where role: 'student' }
end
