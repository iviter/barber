class Car < ApplicationRecord
  mount_uploaders :pictures, PictureUploader

  belongs_to :user
  has_many :parts
  has_one :advertisement
end
