class User < ApplicationRecord
  has_many :favorites
  has_many :jobs, through: :favorites
end
