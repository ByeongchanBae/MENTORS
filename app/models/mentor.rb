class Mentor < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :price, numericality: { only_integer: true }
  validates :speciality, presence: true
end
