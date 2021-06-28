class Provider < User
  has_many :advertisements, foreign_key: :user_id
  has_one :user_profile, foreign_key: :user_id
  has_many :cars, through: :advertisements, foreign_key: :user_id
end
