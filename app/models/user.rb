class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # after_initialize :set_defaults
  validates :age, numericality: { less_than: 150.0 }
  
  def full_name
    first_name.capitalize + " " + last_name.capitalize
  end
end
