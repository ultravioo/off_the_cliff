class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :trail

  validates :user, uniqueness: { scope: :trail }
end
