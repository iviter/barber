class User < ApplicationRecord
  USER_TYPES = ['Provider', 'Admin']
  #has_secure_password
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_inclusion_of :type, in: USER_TYPES
end
