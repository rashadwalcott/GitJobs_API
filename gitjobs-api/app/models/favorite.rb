class Favorite < ApplicationRecord
  validates_uniqueness_of :job_id, scope: [:user_id]
  belongs_to :user
  belongs_to :job
end
