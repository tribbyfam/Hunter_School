class CohortsToUser < ApplicationRecord
  belongs_to :user
  belongs_to :cohort
end
