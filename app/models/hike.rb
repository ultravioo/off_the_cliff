class Hike < ApplicationRecord
  belongs_to :trail
  belongs_to :user
  has_many :pins, dependent: :destroy
  has_many :points, dependent: :destroy
end
