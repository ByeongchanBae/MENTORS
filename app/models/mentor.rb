class Mentor < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :price, numericality: { only_integer: true }
  validates :speciality, presence: true
end
