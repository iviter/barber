class Car < ApplicationRecord
  mount_uploaders :pictures, PicturesUploader

  belongs_to :user
  has_many :parts
  has_one :advertisement
end
