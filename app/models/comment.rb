class Comment < ApplicationRecord
  belongs_to :advertisement, foreign_key: :advertisement_id
end
