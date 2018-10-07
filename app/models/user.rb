class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # after_initialize :set_defaults
  def full_name
    first_name.capitalize + " " + last_name.capitalize
  end
end
