class Student < User
  validates_presence_of :first_name, :last_name, :age, :education
  belongs_to :cohort
end