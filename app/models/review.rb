class Review < ApplicationRecord
  belongs_to :trail
  belongs_to :user
end
