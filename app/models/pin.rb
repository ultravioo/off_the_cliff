class Pin < ApplicationRecord
  belongs_to :trail

  validates :longitude, presence: true, numericality: { greater_than_or_equal_to: -180,  \
                                                        less_than_or_equal_to: 180 }
  validates :latitude, presence: true, numericality: { greater_than_or_equal_to: -90,  \
                                                       less_than_or_equal_to: 90 }
  validates :kind, presence: true
  validates_inclusion_of :kind, in: ["Roadblock", "Warning", "Camping Site", "Picture Spot"]
  validates :description, length: { minimum: 20 }
end
