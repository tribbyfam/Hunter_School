class Cohort < ApplicationRecord
  has_many :cohortstousers
  has_many :users, through: :cohortstousers
  has_one :instructor, -> { where(type: 'Instructor') }, :class_name => "User"
  
end
