class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  has_many :mentors
  has_many :booked_mentors, through: :mentors, source: :bookings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
