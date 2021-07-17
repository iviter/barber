class Advertisement < ApplicationRecord
  mount_uploaders :pictures, PicturesUploader

  belongs_to :user, foreign_key: :user_id
  has_many :comments, dependent: :destroy
end
