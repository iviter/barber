class Advertisement < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :comments, dependent: :destroy
end
