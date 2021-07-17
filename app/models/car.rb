class Car < ApplicationRecord
  mount_uploaders :pictures, PicturesUploader

  belongs_to :user
  has_one :advertisement
end
