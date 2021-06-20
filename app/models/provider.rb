class Provider < User
  has_many :advertisements
  has_one :profile
  has_many :cars
end
