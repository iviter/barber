class Advertisement < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  #belongs_to :car, foreign_key: :car_id
  has_many :comments, dependent: :destroy
end
