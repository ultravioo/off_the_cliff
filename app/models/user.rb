class User < ApplicationRecord
  has_many :trails, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :hikes, dependent: :destroy
  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def ended_distances
    trail_ids = hikes.where.not(ended_at: nil).pluck(:trail_id)
    Trail.where(id: trail_ids).sum(:distance)
  end

  def ended_altitudes
    trail_ids = hikes.where.not(ended_at: nil).pluck(:trail_id)
    Trail.where(id: trail_ids).sum(:elevation)
  end

  def confirmed_pins
    trail_ids = hikes.where.not(ended_at: nil).pluck(:trail_id)
    Pin.where(trail_id: trail_ids).count
  end
end
