class User < ApplicationRecord
  has_many :courses
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # after_initialize :set_defaults
  
end
