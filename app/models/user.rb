class User < ApplicationRecord
  has_secure_password
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :type
end
