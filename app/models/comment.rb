class Comment < ApplicationRecord
  belongs_to :advertisement, foreign_key: :advertisement_id
  belongs_to :user, foreign_key: :user_id
end
