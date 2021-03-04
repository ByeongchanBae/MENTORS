class Mentor < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :avatar
  geocoded_by :address

  validates :title, presence: true
  validates :description, presence: true
  validates :price, numericality: { only_integer: true }
  validates :speciality, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
end


