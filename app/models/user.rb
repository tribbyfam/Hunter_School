class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # after_initialize :set_defaults
  validates_presence_of :first_name, :last_name, :age, :education 
  validates :age, numericality: { less_than: 150.0 }
  has_many :cohort_users
  has_many :cohorts, through: :cohort_users

  def full_name
    first_name.capitalize + " " + last_name.capitalize
  end
end
