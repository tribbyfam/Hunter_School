class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # after_initialize :set_defaults
  validates_presence_of :first_name, :last_name, :age, :education, :salary
  validates :age, numericality: { only_integer: true, greater_than: 0, less_than: 150.0, alert: "Enter valid age" }
  validates :salary, numericality: {only_integer: true, greater_than: 0, alert: "Enter valid number"}
  has_many :cohort_users
  has_many :cohorts, through: :cohort_users

  def full_name
    first_name.capitalize + " " + last_name.capitalize
  end
end
