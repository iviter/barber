class Car < ApplicationRecord
  belongs_to :user
  has_many :parts
  has_one :advertisement
end
