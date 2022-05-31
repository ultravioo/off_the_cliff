class Point < ApplicationRecord
  belongs_to :trail

  validates :longitude, presence: true, numericality: { greater_than_or_equal_to: -180,  \
                                                        less_than_or_equal_to: 180 }
  validates :latitude, presence: true, numericality: { greater_than_or_equal_to: -90,  \
                                                       less_than_or_equal_to: 90 }
  validates :elevation, presence: true, numericality: { only_integer: true }
end
