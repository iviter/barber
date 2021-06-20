class Part < ApplicationRecord
  belongs_to :car, foreign_key: :car_id
  belongs_to :advertisement, foreign_key: :advertisement_id
end
