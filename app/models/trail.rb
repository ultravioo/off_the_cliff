class Trail < ApplicationRecord
  belongs_to :user
  has_many :pins
  has_many :points

  validates :name, presence: true, uniqueness: true
  validates :distance, presence: true, numericality: { only_integer: true }
  validates :duration, presence: true, numericality: { only_integer: true }
  validates :elevation, presence: true, numericality: { only_integer: true }
  validates_inclusion_of :difficulty, in: ["Beginner", "Intermediate", "Experienced", "Pro"]
  validates :description, length: { minimum: 50 }
  validates :location, length: { minimum: 10 }
end
